# Docker: sebastianharko/golang-ping-pong

Simple Golang service that returns "pong" when given "ping".

# How to run it

```bash
docker run -d -p 80:80 -e PORT=80 --name=golang-ping-pong sebastianharko/golang-ping-pong
```

# How to build it

```bash
# To build
make clean build

# To Run
make clean run

# To push
make push
```
