## Introduction

CAS in the cloud is a full-stacked project to deploy your CAS server in the cloud.

It is based on the CAS server (and CAS management webapp) v5.0.

The tickets are handled via Memcached and the services are defined as JSON files.

Everything is dockerized for the cloud.


## Installation

### Hosts

You need to locally add the `cas-server` and `cas-management` hosts by updating your `/etc/hosts/` file:

```shell
127.0.0.1     localhost     cas-server     cas-management
```

### Build the CAS webapps

You can build the CAS webapps via the following command at the root directory: `./package.sh`


## Launch CAS in the cloud

You can run the CAS stack using the following command at the root directory: `docker-compose up`.

The CAS server is available on the following URL: `http://cas-server:8080/login`. You can login using `leleuj/leleuj` or `jleleu/jleleu`, but of course, the default authentication handler MUST be changed.

The CAS management webapp is available on the following URL: `http://cas-management:8081`.
