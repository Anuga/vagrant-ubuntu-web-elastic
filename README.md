# Web Development Kit

This Kit _contains_ five Ubuntu 18.04 servers:

1. NodeJS

## Software

Software needed to fully get this enviroment up and running:

### Virtual Box 5.x

Download and install from [Virtual Box](https://www.virtualbox.org/)'s server.

### Vagrant

Download and install from [Vagrant](https://www.vagrantup.com/)'s server.

### Vagrant Proxy

Install Vagrant Proxy Plugin:

`vagrant plugin install vagrant-proxyconf`

#### Ubuntu

You won't need to download or install Ubuntu... **no really, you don't!** :)
Vagrant will automatically download a Ubuntu package, install and set it up for you.
Vagrant will also run a bash script that will install the following software dependencies:

- NodeJS
