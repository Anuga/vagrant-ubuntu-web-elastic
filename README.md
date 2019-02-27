# Web Development Kit

This Kit _contains_ five Ubuntu 18.04 servers:

1. Webserver
2. Elasticsearch Cluster Master One
3. Elasticsearch Cluster Master Two
4. Elasticsearch Cluster Node One
5. Elasticsearch Cluster Node Two
6. MongoDB Database

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

- Apache 2.4.x, PHP 7.2.x, on the webserver.
- Elasticsearch 6.x, on the elastic servers.
- MongoDB 6.x, on the mongodb server.

Pre-configured Elastic files are automatically copied.
Pre-configured MongoDB files are automatically copied.
