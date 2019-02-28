Vagrant.configure("2") do |config|

  if Vagrant.has_plugin?("vagrant-proxyconf")
    config.apt_proxy.http = "http://apt-proxy.se.axis.com:8000"
    config.apt_proxy.https = "http://apt-proxy.se.axis.com:8000"
    config.proxy.http = "http://wwwproxy:3128"
    config.proxy.https = "http://wwwproxy:3128"
    config.proxy.no_proxy = "localhost,127.0.0.1,.se.axis.com,.axis.com"
  end

  config.vm.box = "ubuntu/bionic64"

  config.vm.define "node" do |node|
    node.vm.hostname = "node"
    node.vm.network :private_network, ip: "192.168.56.201"
    node.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natnet1", "172.16.0.0/24"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "node"]
    end
    node.vm.provision :shell, path: "./scripts/node.sh"
  end

end
