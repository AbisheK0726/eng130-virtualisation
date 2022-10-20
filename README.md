# Vagrant Intro

## Common Commands for Vagrant

**_NOTE:_** Usage: `vagrant [options] <command> [<args>]`

| Command | Description |
|---------|-------------|
|box|manages boxes: installation, removal, etc.|
|cloud|manages everything related to Vagrant Cloud|
|destroy|stops and deletes all traces of the vagrant machine|
|global-status|outputs status Vagrant environments for this user|
|halt|stops the vagrant machine|
|help|shows the help for a subcommand|
|init|initializes a new Vagrant environment by creating a Vagrantfile|
|login||
|package|packages a running vagrant environment into a box|
|plugin|manages plugins: install, uninstall, update, etc.|
|port|displays information about guest port mappings|
|powershell|connects to machine via powershell remoting|
|provision|provisions the vagrant machine|
|push|deploys code in this environment to a configured destination|
|rdp|connects to machine via RDP|
|reload|restarts vagrant machine, loads new Vagrantfile configuration|
|resume|resume a suspended vagrant machine|
|snapshot|manages snapshots: saving, restoring, etc.|
|ssh|connects to machine via SSH|
|ssh-config|outputs OpenSSH valid configuration to connect to the machine|
|status|outputs status of the vagrant machine|
|suspend|suspends the machine|
|up|starts and provisions the vagrant environment|
|upload|upload to machine via communicator|
|validate|validates the Vagrantfile|
|version|prints current and latest Vagrant version|
|winrm|executes commands on a machine via WinRM|
|winrm-config|outputs WinRM configuration to connect to the machine|

## Check if CPU has virtualization support

Check if CPU has virtualization `Enabled` or `Disabled`:

![CPU](images/CPU_Check.png)

## How to enable Vagrant

[Windows Offical Documentation](https://learn.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v)

[Video Guide](https://www.youtube.com/watch?v=gmN6B_H9xj4)

## Linux Basics

- check internet connectivity `sudo apt-get update`
- run upgrade `sudo apt-get upgrade -y`
- Where am I `pwd`
- Who am I `whoami`
- Kernel version `uname -a`
- Create a directory `mkdir`
- Create a file `touch <filename>`
- List files `ls -a`
- Edit a file `nano <filename>`
- Move into a directory `cd <directory>` and `cd ..`
- Remove a file `rm <filename>` and `rm -rf <directory>`
- Copy a file `cp <filename> <newfilename>`
- Move a file `mv <filename> <newfilename>`
- Admin privileges `sudo` and `sudo su`
- Permissions `chmod <permissions> <filename>`
- task manager `top` and `ps aux`
- kill a process `kill <PID>`
- kill a process by name `killall <processname>`


### Task

| Command | Description |
|---------|-------------|
|`tail -n 3 test.txt`|print the last 3 line from a file|
|`tail -n 1 test.txt`|print the last line from a file|
|`>`|is used to redirect the output of a command to a file. If the file does not exist, it will be created. If the file exists, it will be overwritten.|
|`>>`|is used to redirect the output of a command to a file. If the file does not exist, it will be created. If the file exists, the output will be appended to the end of the file.|
|`grep`|is used to search for a string in a file.|
|`sort`|is used to sort the lines of a file.|
|`&`|is used to run a command in the background.|
|`fg`|is used to bring a background process to the foreground.|
|`bg`|is used to send a process to the background.|
|`kill`|is used to kill a process.|

`|` - Pipes are used to connect two commands together. The output of the first command is used as the input of the second command.

Sort ps aux by name `ps aux | sort -k 11`

### Install Nginx

- Install Nginx `sudo apt-get install nginx`

- Check if Nginx is installed `sudo service nginx status` or `sudo systemctl status nginx`
- Start Nginx `sudo service nginx start` or `sudo systemctl start nginx`
- Restart a process `sudo service nginx restart` or `sudo systemctl restart nginx`
- Stop a process `sudo service nginx stop` or `sudo systemctl stop nginx`

### Vagrant Synced Folders

[Official Documentation](https://www.vagrantup.com/docs/synced-folders/basic_usage)

To sync files between host and guest, we need to add the following to the Vagrantfile:

```ruby
config.vm.synced_folder "src", "/var/www/html"
```

Where the first argument is the path to the folder on the host and the second argument is the path to the folder on the guest machine.

## Environment Variables (Linux)

Environment variables are variables that are set in the environment in which a process runs. They are used to store information that is used by multiple processes. Environment variables are set in the shell and are available to all processes that are started by that shell.

However these will be lost when you close the shell. To make them permanent, you need to add them to the shell configuration file.

Systax: `<variable>=<value>`
Example: `MY_VAR=hello`

## How Make an environment Variable Presistent

- Open the file `sudo nano .bashrc`
- Add the variable `export MY_VAR=hello`
- Save the file `ctrl + x` and `y`
- Close the terminal and open a new one
- Check if the variable is set `echo $MY_VAR`

### Steps to follow for db setup

Step 1: Create 2 VM
    1.1: Setup App in Machine 1
    1.2: Setup MongoDB in Machine 2

Step 2: Setup MongoDB with a vaild key

Step 3: Ensure its running -3.1, mondogo.conf to allow access to everyone

Step 4:
