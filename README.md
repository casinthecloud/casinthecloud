## Introduction

CAS in the cloud is a full-stacked project to deploy your CAS server in the cloud.

It is based on the CAS server (and CAS management webapp) v5.0.

The tickets and services registries are handled by Couchbase v4.6.

Everything is dockerized for the cloud.


## Installation

### Hosts

You need to locally add the `cas-server` and `cas-management` hosts by updating your `/etc/hosts/` file:

```shell
127.0.0.1     localhost     cas-server     cas-management
```

### Couchbase setup

Before launching the full stack, you need to start only the Couchbase container for setup. You can do that with the following command at the root directory: `docker-compose -f docker-compose-without-cas.yml up`.

It will start the Couchbase server and the UI will be available on `http://localhost:8091`.

Browse this URL:

1) click on the "Setup" button
2) keep "Start a new cluster" and define the "Data" and "Index" RAM quotas
3) don't check any sample buckets and click on the "Next" button
4) click on the "Skip" button on the "CREATE DEFAULT BUCKET" page
5) Register yourself and click "Next"
6) fill the "Username" with `adminchbase` and the "Password" with `chbpwdcass` (you're free to choose your own username/password) and click "Next"
7) on the "Data Buckets" tab, create a new data bucket for the CAS tickets named `tickets`, "Couchbase" type, use the majority of the available memory, use the "Standard port" and define the password: `castickets` (if you change this value, you must change it as well in the `cas.properties` file of the CAS server)
8) on the "Data Buckets" tab, create a new data bucket for the CAS services named `services`, "Couchbase" type, use a small amount of the available memory, use the "Standard port" and define the password: `casservices` (if you change this value, you must change it as well in the `cas.properties` file of the CAS server), increase the number of replica copies
9) in the `services` bucket, add the CAS service(s) you want (via the "Create document" button) like for example:

```json
{
  "@class": "org.apereo.cas.services.RegexRegisteredService",
  "serviceId": "^https?://.*",
  "name": "anything with HTTP or HTTPS",
  "theme": "apereo",
  "id": 1,
  "evaluationOrder": 1
}
```

### Build the CAS webapps

You can build the CAS webapps via the following command at the root directory: `./package.sh`


## Launch CAS in the cloud

You can run the CAS stack using the following command at the root directory: `docker-compose up`.

The CAS server is available on the following URL: `http://cas-server:8080/login`. You can login using `leleuj/leleuj` or `jleleu/jleleu`, but of course, the default authentication handler MUST be changed.

The CAS management webapp is available on the following URL: `http://cas-management:8081`.
