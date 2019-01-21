Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"

  config.vm.define "webserver" do |webserver|

    webserver.vm.hostname = 'webserver'

    webserver.vm.network :private_network, ip: "192.168.56.100"
    #webserver.vm.network :forwarded_port, guest: 22, host: 10120, id: "ssh"
    #webserver.vm.network :forwarded_port, guest: 80, host: 80, id: "apache"

    webserver.vm.provider :virtualbox do |v|

      #v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "webserver"]

    end

    webserver.vm.provision :shell, path: "./scripts/webserver.sh"

  end

  config.vm.define "mongodb" do |mongo|

    mongo.vm.hostname = 'mongodo'

    mongo.vm.network :private_network, ip: "192.168.56.201"
    #mongo.vm.network :forwarded_port, guest: 22, host: 10201, id: "ssh"

    mongo.vm.provider :virtualbox do |v|

      #v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "mongodb"]

    end

    mongo.vm.provision :shell, path: "./scripts/mongodb.sh"

  end

  config.vm.define "master-one" do |masterOne|

    masterOne.vm.hostname = 'master-one'

    masterOne.vm.network :private_network, ip: "192.168.56.101"
    #masterOne.vm.network :forwarded_port, guest: 22, host: 10221, id: "ssh"
    #masterOne.vm.network :forwarded_port, guest: 9200, host: 9201, id: "elastic"
    #masterOne.vm.network :forwarded_port, guest: 5601, host: 5601, id: "kibana"

    masterOne.vm.provider :virtualbox do |v|

      #v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 4096]
      v.customize ["modifyvm", :id, "--name", "master-one"]

    end

    masterOne.vm.provision :shell, path: "./scripts/master-one.sh"
  end

  config.vm.define "master-two" do |masterTwo|

    masterTwo.vm.hostname = 'master-two'

    masterTwo.vm.network :private_network, ip: "192.168.56.102"
    #masterTwo.vm.network :forwarded_port, guest: 22, host: 10222, id: "ssh"
    #masterTwo.vm.network :forwarded_port, guest: 9200, host: 9202, id: "elastic"
    #masterTwo.vm.network :forwarded_port, guest: 5601, host: 5602, id: "kibana"

    masterTwo.vm.provider :virtualbox do |v|

      #v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 4096]
      v.customize ["modifyvm", :id, "--name", "master-two"]

    end

    masterTwo.vm.provision :shell, path: "./scripts/master-two.sh"

  end

  config.vm.define "node-one" do |nodeOne|

    nodeOne.vm.hostname = 'node-one'

    nodeOne.vm.network :private_network, ip: "192.168.56.111"
    #nodeOne.vm.network :forwarded_port, guest: 22, host: 10501, id: "ssh"
    #nodeOne.vm.network :forwarded_port, guest: 9200, host: 9203, id: "elastic"

    nodeOne.vm.provider :virtualbox do |v|

      #v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 4096]
      v.customize ["modifyvm", :id, "--name", "node-one"]

    end

    nodeOne.vm.provision :shell, path: "./scripts/node-one.sh"

  end

  config.vm.define "node-two" do |nodeTwo|

    nodeTwo.vm.hostname = 'node-two'

    nodeTwo.vm.network :private_network, ip: "192.168.56.112"
    #nodeTwo.vm.network :forwarded_port, guest: 22, host: 10502, id: "ssh"
    #nodeTwo.vm.network :forwarded_port, guest: 9200, host: 9204, id: "elastic"

    nodeTwo.vm.provider :virtualbox do |v|

      #v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 4096]
      v.customize ["modifyvm", :id, "--name", "node-two"]

    end

    nodeTwo.vm.provision :shell, path: "./scripts/node-two.sh"

  end

end
