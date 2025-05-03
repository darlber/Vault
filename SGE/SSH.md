`sudo apt update`
`sudo apt install openssh-server -y`
Configuración

``sudo nano /etc/ssh/sshd_config
	Port 22 # Puerto por defecto
	ListenAddress 0.0.0.0 # Acceso desde cualquier IP
	PermitRootLogin no # Evita acceso como root
	AllowUsers usuario1 usuario2 # Usuarios permitidos
	PÁGINA 22
	PasswordAuthentication yes # Autenticación con password
	PermitEmptyPassword no # Impide passwords vacías

``sudo systemctl enable ssh
``sudo systemctl restart ssh
``sudo ufw allow OpenSSH