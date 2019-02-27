Vagrant.configure("2") do |config|

  if Vagrant.has_plugin?("vagrant-proxyconf")
    config.apt_proxy.http = "http://apt-proxy.se.axis.com:8000"
    config.apt_proxy.https = "http://apt-proxy.se.axis.com:8000"
    config.proxy.http = "http://wwwproxy:3128"
    config.proxy.https = "http://wwwproxy:3128"
    config.proxy.no_proxy = "localhost,127.0.0.1,.se.axis.com,.axis.com"
  end

  config.vm.box = "ubuntu/bionic64"

  config.vm.define "server" do |server|
    server.vm.hostname = "server"
    server.vm.network :private_network, ip: "192.168.56.100"
    # server.vm.network :forwarded_port, guest: 22, host: 10120, id: "ssh"
    # server.vm.network :forwarded_port, guest: 80, host: 80, id: "apache"
    server.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natnet1", "172.16.0.0/24"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "server"]
    end
    server.vm.provision :shell, path: "./scripts/server.sh"
  end

  config.vm.define "mongo" do |mongo|
    mongo.vm.hostname = 'mongo'
    mongo.vm.network :private_network, ip: "192.168.56.201"
    # mongo.vm.network :forwarded_port, guest: 22, host: 10201, id: "ssh"
    # mongo.vm.network :forwarded_port, guest: 27017, host: 27017, id: "mongod-mongos"
    # mongo.vm.network :forwarded_port, guest: 27018, host: 27018, id: "mongod-shardsvr"
    mongo.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natnet1", "172.16.0.0/24"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "mongo"]
    end
    mongo.vm.provision :shell, path: "./scripts/mongo.sh"
  end

  # config.vm.define "master-one" do |masterOne|
  #   masterOne.vm.hostname = 'master-one'
  #   masterOne.vm.network :private_network, ip: "192.168.56.101"
  #   # masterOne.vm.network :forwarded_port, guest: 22, host: 10221, id: "ssh"
  #   # masterOne.vm.network :forwarded_port, guest: 9200, host: 9201, id: "elastic"
  #   # masterOne.vm.network :forwarded_port, guest: 5601, host: 5601, id: "kibana"
  #   masterOne.vm.provider :virtualbox do |v|
  #     # v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  #     v.customize ["modifyvm", :id, "--natnet1", "172.16.0.0/24"]
  #     v.customize ["modifyvm", :id, "--memory", 2048]
  #     v.customize ["modifyvm", :id, "--name", "master-one"]
  #   end
  #   # masterOne.vm.provision :shell, path: "./scripts/master-one.sh"
  # end

  # config.vm.define "master-two" do |masterTwo|
  #   masterTwo.vm.hostname = 'master-two'
  #   masterTwo.vm.network :private_network, ip: "192.168.56.102"
  #   # masterTwo.vm.network :forwarded_port, guest: 22, host: 10222, id: "ssh"
  #   # masterTwo.vm.network :forwarded_port, guest: 9200, host: 9202, id: "elastic"
  #   # masterTwo.vm.network :forwarded_port, guest: 5601, host: 5602, id: "kibana"
  #   masterTwo.vm.provider :virtualbox do |v|
  #     # v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  #     v.customize ["modifyvm", :id, "--natnet1", "172.16.0.0/24"]
  #     v.customize ["modifyvm", :id, "--memory", 2048]
  #     v.customize ["modifyvm", :id, "--name", "master-two"]
  #   end
  #   # masterTwo.vm.provision :shell, path: "./scripts/master-two.sh"
  # end

  # config.vm.define "node-one" do |nodeOne|
  #   nodeOne.vm.hostname = 'node-one'
  #   nodeOne.vm.network :private_network, ip: "192.168.56.111"
  #   # nodeOne.vm.network :forwarded_port, guest: 22, host: 10501, id: "ssh"
  #   # nodeOne.vm.network :forwarded_port, guest: 9200, host: 9203, id: "elastic"
  #   nodeOne.vm.provider :virtualbox do |v|
  #     # v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  #     v.customize ["modifyvm", :id, "--natnet1", "172.16.0.0/24"]
  #     v.customize ["modifyvm", :id, "--memory", 2048]
  #     v.customize ["modifyvm", :id, "--name", "node-one"]
  #   end
  #   # nodeOne.vm.provision :shell, path: "./scripts/node-one.sh"
  # end

  # config.vm.define "node-two" do |nodeTwo|
  #   nodeTwo.vm.hostname = 'node-two'
  #   nodeTwo.vm.network :private_network, ip: "192.168.56.112"
  #   # nodeTwo.vm.network :forwarded_port, guest: 22, host: 10502, id: "ssh"
  #   # nodeTwo.vm.network :forwarded_port, guest: 9200, host: 9204, id: "elastic"
  #   nodeTwo.vm.provider :virtualbox do |v|
  #     # v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  #     v.customize ["modifyvm", :id, "--natnet1", "172.16.0.0/24"]
  #     v.customize ["modifyvm", :id, "--memory", 2048]
  #     v.customize ["modifyvm", :id, "--name", "node-two"]
  #   end
  #   # nodeTwo.vm.provision :shell, path: "./scripts/node-two.sh"
  # end

end
