# Install Everything
# Creating a VM with Linux OS using Ubuntu 16.04LTS

Vagrant.configure("2") do |config|
    config.vm.define "app" do |app|
        app.vm.box = "ubuntu/bionic64"
        app.vm.network "private_network", ip: "192.168.10.100"
        app.vm.synced_folder "./app", "/home/vagrant/app"
        app.vm.synced_folder "./environment", "/home/vagrant/environment"
        app.vm.provision "shell", path: "provision.sh"
    end

    config.vm.define "db" do |db|
        db.vm.box = "ubuntu/bionic64"
        db.vm.network "private_network", ip: "192.168.10.150"
    end
end

