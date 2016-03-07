# search-dev-environment

## Required tools

- vagrant
- Virtualbox

## Get up and running

Clone this repository

```bash
$ git clone git@github.com:Asquera/search-dev-environment.git
```

Then run

```
$ vagrant up
```

Log in to the vm:

```bash
$ vagrant ssh
```

By default, Elasticsearch accepts connections on localhost only. In order to be able to access it via the host's ip address,  you need to edit the configuration file:

```bash
$ sudo vim /etc/elasticsearch/elasticsearch.yml
```

Then edit the line with `network_host`:

```
network_host: 0.0.0.0
```

Save and close the file. After you've done this, restart the service:

```bash
$ sudo service elasticsearch restart
```
