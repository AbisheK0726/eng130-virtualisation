# Install Everything
# Creating a VM with Linux OS using Ubuntu 16.04LTS

Vagrant.configure("2") do |config|

config.vm.box = "ubuntu/xenial64"
config.vm.network "private_network", ip: "192.168.10.100"

config.vm.synced_folder "./app", "/home/vagrant/app"

config.vm.synced_folder "./environment", "/home/vagrant/environment"

config.vm.provision "shell", path: "provision.sh"


end
