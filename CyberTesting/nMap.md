## Tabla con parámetros básicos de nMap

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

| Scan Type            | Switch | Description                                                                  |
| -------------------- | ------ | ---------------------------------------------------------------------------- |
| TCP Connect Scan     | `-sT`  | Full TCP handshake; used when SYN scan is not available (e.g., non-root).    |
| SYN "Half-open" Scan | `-sS`  | Sends SYN packets; faster and stealthier than `-sT`. Commonly used.          |
| UDP Scan             | `-sU`  | Scans UDP ports; slower and more difficult to detect.                        |
| TCP Null Scan        | `-sN`  | Sends packets with no flags set; can evade some firewalls and filters.       |
| TCP FIN Scan         | `-sF`  | Sends FIN packets; can bypass some filtering devices.                        |
| TCP Xmas Scan        | `-sX`  | Sends packets with FIN, URG, and PSH flags set; named after blinking lights. |
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
## Location
We have two options for this, which should ideally be used in conjunction with each other. The first is the page on the [Nmap website](https://nmap.org/nsedoc/)(mentioned in the previous task) which contains a list of all official scripts. The second is the local storage on your attacking machine. Nmap stores its scripts on Linux at `/usr/share/nmap/scripts`
There are two ways to search for installed scripts. 
- One is by using the `/usr/share/nmap/scripts/script.db` file. Despite the extension, this isn't actually a database so much as a formatted text file containing filenames and categories for each available script. Nmap uses this file to keep track of (and utilise) scripts for the scripting engine; however, we can also _grep_ through it to look for scripts. For example: `grep "ftp" /usr/share/nmap/scripts/script.db`.
- The second way to search for scripts is quite simply to use the `ls` command. For example, we could get the same results as in the previous screenshot by using `ls -l /usr/share/nmap/scripts/*ftp*`:
We mentioned previously that the Nmap website contains a list of scripts, so, what happens if one of these is missing in the `scripts` directory locally? A standard `sudo apt update && sudo apt install nmap` should fix this; however, it's also possible to install the scripts manually by downloading the script from Nmap (`sudo wget -O /usr/share/nmap/scripts/<script-name>.nse https://svn.nmap.org/nmap/scripts/<script-name>.nse`). This must then be followed up with `nmap --script-updatedb`, which updates the `script.db` file to contain the newly downloaded script.