## Exportar datos de Nessus Essentials vía API REST

Nessus Essentials (gratuito) bloquea la exportación PDF desde la interfaz web.  
La API REST sí permite obtener los datos en JSON y luego convertirlos a PDF con herramientas externas.

### Script `nessus2pdf.py`

```python
#!/usr/bin/env python3
"""Nessus Essentials -> PDF report generator (Executive + Technical)"""

import json, os, sys, argparse
from datetime import datetime, timezone
from jinja2 import Environment, FileSystemLoader
from weasyprint import HTML
import subprocess

API_BASE = "https://localhost:8834"
SEVERITY_MAP = {0: "Info", 1: "Low", 2: "Medium", 3: "High", 4: "Critical"}

def api_get(path, token):
    cmd = ['curl', '-k', '-s', '-X', 'GET', f"{API_BASE}{path}", '-H', f"X-Cookie: token={token}"]
    r = subprocess.run(cmd, capture_output=True, text=True)
    return json.loads(r.stdout)

def get_plugin_detail(scan_id, host_id, plugin_id, token):
    data = api_get(f"/scans/{scan_id}/hosts/{host_id}/plugins/{plugin_id}", token)
    return data.get("info", {}).get("plugindescription", {})

def gen_reports(scan_json, scan_id, token, scan_type, output_dir):
    info = scan_json["info"]
    scan_name = info["name"]
    status = info["status"]
    scan_start = info["scan_start"]
    scan_date = datetime.fromtimestamp(scan_start, tz=timezone.utc).strftime("%Y-%m-%d %H:%M UTC")
    host = scan_json["hosts"][0]
    hostname = host["hostname"]
    host_id = host["host_id"]

    critical = host.get("critical", 0)
    high = host.get("high", 0)
    medium = host.get("medium", 0)
    low = host.get("low", 0)
    info_count = sum(1 for v in scan_json["vulnerabilities"] if v["severity"] == 0)

    vulns = []
    for v in scan_json["vulnerabilities"]:
        plugin_id = v["plugin_id"]
        sev = v["severity"]

        detail = get_plugin_detail(scan_id, host_id, plugin_id, token)
        attrs = detail.get("pluginattributes", {})
        risk_info = attrs.get("risk_information", {})
        ref_info = attrs.get("ref_information", {})

        cve_list = []
        cwe_val = attrs.get("cwe")
        for ref in ref_info.get("ref", []):
            if ref.get("name") == "cve":
                cve_list = ref["values"]["value"]
            elif ref.get("name") == "cwe" and not cwe_val:
                cwe_val = ", ".join(ref["values"]["value"])

        plugin_output = None
        if sev >= 3:
            outputs = detail.get("outputs") or []
            out_texts = [o["plugin_output"] for o in outputs if o.get("plugin_output")]
            if out_texts:
                plugin_output = "\n\n".join(out_texts[:3])

        vuln_entry = {
            "plugin_id": plugin_id,
            "plugin_name": v["plugin_name"],
            "severity": sev,
            "severity_label": SEVERITY_MAP[sev],
            "family": detail.get("pluginfamily", ""),
            "synopsis": attrs.get("synopsis", ""),
            "description": attrs.get("description", ""),
            "solution": attrs.get("solution", ""),
            "risk_factor": risk_info.get("risk_factor", ""),
            "cvss_base_score": risk_info.get("cvss_base_score"),
            "cvss3_base_score": risk_info.get("cvss3_base_score"),
            "cve": ", ".join(cve_list[:5]) if cve_list else None,
            "cwe": cwe_val,
            "exploit_available": attrs.get("vuln_information", {}).get("exploit_available"),
            "plugin_output": plugin_output,
        }
        vulns.append(vuln_entry)

    vulns_sorted = sorted(vulns, key=lambda x: (-x["severity"], x["plugin_name"]))
    vulns_all_sorted = sorted(
        [{"plugin_id": v["plugin_id"], "plugin_name": v["plugin_name"], "severity": v["severity"]}
         for v in scan_json["vulnerabilities"]],
        key=lambda x: (-x["severity"], x["plugin_name"])
    )

    env = Environment(loader=FileSystemLoader("/tmp/nessus_reports/templates"))
    gen_date = datetime.now().strftime("%Y-%m-%d %H:%M")

    ctx = {
        "scan_name": scan_name, "scan_type": scan_type, "scan_date": scan_date,
        "status": status, "hostname": hostname, "host_ip": hostname,
        "critical": critical, "high": high, "medium": medium, "low": low,
        "info": info_count, "total_vulns": len([v for v in vulns if v["severity"] > 0]),
        "vulns_sorted": vulns_all_sorted, "vulns": vulns_sorted,
        "generation_date": gen_date,
    }

    exec_html = env.get_template("executive.html").render(ctx)
    HTML(string=exec_html).write_pdf(os.path.join(output_dir, f"{scan_name} - Executive.pdf"))
    print(f"[+] Executive PDF generated")

    tech_html = env.get_template("technical.html").render(ctx)
    HTML(string=tech_html).write_pdf(os.path.join(output_dir, f"{scan_name} - Technical.pdf"))
    print(f"[+] Technical PDF generated")

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("scan_file")
    parser.add_argument("scan_id", type=int)
    parser.add_argument("scan_type")
    parser.add_argument("token")
    parser.add_argument("-o", "--output", default="/tmp/nessus_reports")
    args = parser.parse_args()

    with open(args.scan_file) as f:
        scan_json = json.load(f)
    os.makedirs(args.output, exist_ok=True)
    gen_reports(scan_json, args.scan_id, args.token, args.scan_type, args.output)

if __name__ == "__main__":
    main()
```
