# Load-It

Minimal load testing image based on [k6](https://github.com/k6io/k6) and [mqtt-stresser](https://github.com/inovex/mqtt-stresser).

My main motivation was to create a simple, command-line based load testing image, which can be easily used in Kubernetes. Docker images for [k6](https://hub.docker.com/r/loadimpact/k6/) and [mqtt-stresser](https://hub.docker.com/r/inovex/mqtt-stresser) already exist, but not in combination and not with an interactive shell by default.

## Usage

Docker:

```sh
docker run --rm -it ghcr.io/niclaszll/load-it:1.0.0
```

Kubernetes:

```sh
kubectl run -i --tty load-it --image=ghcr.io/niclaszll/load-it:1.0.0
```

Afterwards simply run your `k6` or `mqtt-stresser` commands.
