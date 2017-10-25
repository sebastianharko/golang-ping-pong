FROM openjdk:latest 

WORKDIR /app
ADD ./hello-world /app/hello-world

CMD [ "/app/hello-world" ]
