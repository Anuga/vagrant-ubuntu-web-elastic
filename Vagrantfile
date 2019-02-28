Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"

  config.vm.define "node" do |node|
    node.vm.hostname = "node"
    node.vm.network :private_network, ip: "192.168.56.201"
    node.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "node"]
    end
    node.vm.provision :shell, path: "./scripts/node.sh"
  end

end
