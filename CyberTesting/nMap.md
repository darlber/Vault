
| Switch         | Description                                                                                |
| -------------- | ------------------------------------------------------------------------------------------ |
| `-sS`          | Perform a SYN scan (stealth scan).                                                         |
| `-sU`          | Perform a UDP scan.                                                                        |
| `-O`           | Enable OS detection.                                                                       |
| `-sV`          | Detect service versions.                                                                   |
| `-v`           | Increase verbosity level (level 1).                                                        |
| `-vv`          | Increase verbosity to level 2 (recommended).                                               |
| `-oA`          | Output in all major formats (Normal, XML, and Grepable).                                   |
| `-oN`          | Save output in normal format.                                                              |
| `-oG`          | Save output in grepable format.                                                            |
| `-A`           | Enable aggressive mode (OS detection, version detection, script scanning, and traceroute). |
| `-T5`          | Set timing template to level 5 (very fast, very noisy).                                    |
| `-p 80`        | Scan only port 80.                                                                         |
| `-p 1000-1500` | Scan ports from 1000 to 1500.                                                              |
| `-p-`          | Scan **all** 65535 ports.                                                                  |
Most used:

| Scan Type             | Switch | Description                                                                 |
|------------------------|--------|-----------------------------------------------------------------------------|
| TCP Connect Scan       | `-sT`  | Full TCP handshake; used when SYN scan is not available (e.g., non-root).  |
| SYN "Half-open" Scan   | `-sS`  | Sends SYN packets; faster and stealthier than `-sT`. Commonly used.        |
| UDP Scan               | `-sU`  | Scans UDP ports; slower and more difficult to detect.                      |
| TCP Null Scan          | `-sN`  | Sends packets with no flags set; can evade some firewalls and filters.     |
| TCP FIN Scan           | `-sF`  | Sends FIN packets; can bypass some filtering devices.                      |
| TCP Xmas Scan          | `-sX`  | Sends packets with FIN, URG, and PSH flags set; named after blinking lights. |
NSE:

| Category   | Description                                                                                                  |
|------------|--------------------------------------------------------------------------------------------------------------|
| safe       | Won't affect the target                                                                                      |
| intrusive  | Not safe; likely to affect the target                                                                         |
| vuln       | Scan for vulnerabilities                                                                                      |
| exploit    | Attempt to exploit a vulnerability                                                                            |
| auth       | Attempt to bypass authentication for running services (e.g., log into an FTP server anonymously)             |
| brute      | Attempt to bruteforce credentials for running services                                                       |
| discovery  | Attempt to query running services for further information about the network (e.g., query an SNMP server)     |