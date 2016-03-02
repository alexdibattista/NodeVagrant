Vagrant.configure (2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder "..", "/var/www/ProjectName"
  config.vm.provision :shell, :path => "install.sh"
end
