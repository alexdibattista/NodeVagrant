Vagrant.configure (2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder ".", "/var/www/project"
  config.vm.provision "shell", inline: <<-SHELL
    locale-gen en_CA.UTF-8
    apt-get update
    apt-get install -y g++
    curl -sL httpsL://deb.nodesource.com/setup_4.3.1 | sudo -E bash -
    apt-get install -y  git-core python-software-properties
    apt-get install -y build-essential nodejs npm
    su vagrant
    mkdir /home/vagrant/node_modules
    cd /var/www/project
    ln -s /usr/bin/nodejs /usr/bin/node
    npm install -g forever
  SHELL
end
