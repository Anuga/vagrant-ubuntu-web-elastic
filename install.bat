vagrant up
vagrant halt
rem vboxmanage modifyvm "server" --natnet1 "172.16.0.0/24"
rem vboxmanage modifyvm "mongo" --natnet1 "172.16.0.0/24"
rem vboxmanage modifyvm "elasticsearch-master" --natnet1 "172.16.0.0/24"
rem vboxmanage modifyvm "elasticsearch-slave" --natnet1 "172.16.0.0/24"
