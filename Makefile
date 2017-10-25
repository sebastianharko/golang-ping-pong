NAME=ping-pong
TAG=golang-$(NAME)
VER=1.0

all: clean build run

build:
	go get github.com/gorilla/mux
	CGO_ENABLED=0 GOOS=linux go build -ldflags "-s" -a -installsuffix cgo -o hello-world
	docker build -t $(TAG) -t $(TAG):$(VER) .

run:
	docker run -d -p 80:80 -e PORT=80 --name=$(NAME) $(TAG)

clean:
	-docker stop $(NAME)
	-docker rm $(NAME)

push:
	docker tag $(TAG):$(VER) sebastianharko/$(TAG):$(VER)
	docker push sebastianharko/$(TAG):$(VER)
