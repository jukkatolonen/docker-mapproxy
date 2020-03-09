# Dockerized MapProxy

### Note

[uWSGI](https://uwsgi-docs.readthedocs.io/en/latest/index.html) server. Uses this [fork](https://github.com/jukkatolonen/mapproxy) of [MapProxy](https://github.com/mapproxy/mapproxy) to be able to use gzipped response.


### Clone
```
$ git clone https://github.com/jukkatolonen/docker-mapproxy
```

### Build
```
$ docker build -t docker-mapproxy .
```

### Run

Single mode:
```
$ docker run --name 'docker-mapproxy' -p 8080:8080 --rm -v /your/local/mount:/app/yaml docker-mapproxy
```

Multi mode:
```
$ docker run --name 'docker-mapproxy' -p 8080:8080 --rm -v /your/local/mount:/app/yaml docker-mapproxy multi
```

### YAML files for MapProxy
In single mode base config files will be created to local mount directory if `mapproxy.yaml` does not exist.

In multi mode no initial configuration is created. This mode reads all the `.yaml` files from the local mount.




