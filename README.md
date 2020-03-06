# MapProxy Dockerfile

## Get the container

### Local clone
```
$ git clone https://github.com/jukkatolonen/docker-mapproxy
```

### Build Docker image
```
$ docker build -t docker-mapproxy .
```

### Run Docker image

In single mode:
```
$ docker run --name 'docker-mapproxy' -p 8080:8080 --rm -v /your/local/mount:/app/yaml docker-mapproxy single
```

In multi mode:
```
$ docker run --name 'docker-mapproxy' -p 8080:8080 --rm -v /your/local/mount:/app/yaml docker-mapproxy multi
```

### YAML files for MapProxy
Single mode expects that you have `mapproxy.yaml` in your local mount directory. Multi mode reads all the `yaml` files from local mount.

There are no initial yaml files created.


