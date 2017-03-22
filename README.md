# Web Development Kit

This Kit *contains* five Ubuntu 16.10 servers:

 1. Webserver
 2. Elasticsearch Cluster Master One
 3. Elasticsearch Cluster Master Two
 4. Elasticsearch Cluster Node One
 5. Elasticsearch Cluster Node Two

## Software

Software needed to fully get this enviroment up and running:

### Virtual Box 5.x

Download and install from [Virtual Box](https://www.virtualbox.org/)'s server.

### Vagrant

Download and install from [Vagrant](https://www.vagrantup.com/)'s server.

#### Ubuntu

You won't need to download or install Ubuntu... **no really, you don't!** :)
Vagrant will automatically download a Ubuntu package, install and set it up for you.
Vagrant will also run a bash script that will install the following software dependencies:

* Apache 2.4.x, on the webserver.
* PHP 7.x, on the webserver.
* Elasticsearch 5.2.x, on the Elastic servers.

Pre-configured Elastic files are automatically copied and used so the servers will start and be up and running, and talking to eachother from the very first start.
