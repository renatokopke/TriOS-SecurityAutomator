# TriOS-SecurityAutomator

## General Description:
The TriOS-SecurityAutomator is a straightforward security automation solution designed to facilitate the application of controls and security policies in various IT environments. Utilizing the powerful Ansible tool, this project offers an efficient and scalable way to manage the security of operating systems, covering a wide range of platforms.

## 1. Create a Vault File:
```commandline
ansible-vault create secrets.yml
```

### 2. Edit a Vault File:
To modify the file, use:
```commandline
ansible-vault edit secrets.yml
```
In the file, define the variables, e.g.:
```yaml
# Linux and MacOS
ansible_connection: "ssh"
ansible_user: "root"
ansible_ssh_pass: "password"

# Windows
ansible_connection: "winrm"
ansible_winrm_server_cert_validation: "ignore"
ansible_winrm_transport: "basic"
ansible_user: "username"
ansible_password: "password"
```

### 3. Password File (Optional):
Create a file containing the Vault password and pass the path to this file with the flag --vault-password-file.

------
## Apply the playbook

### 1. Run the Playbook with the Vault Password:
```commandline
ansible-playbook -i hosts playbook.yml --ask-vault-pass --limit windows
```
Note: Enter the Vault password when prompted.

Alternatively, use a password file with ansible-playbook playbook.yml --vault-password-file /path/to/password_file.

## Author

- [Renato Kopke](https://www.linkedin.com/in/renatokopke/) - *Principal Developer*