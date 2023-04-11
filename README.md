# ReverseApp Dockerized

***ReverseApp*** is an application made in **Java 11** and **Spring Boot** that is exposed on port **8080** and that I have put inside a **Docker** container.

It is a web application that when making **GET** requests to **"/"** returns a **JSON** with a message that describes how to use it, request example using ***curl***:
```bash
curl -s http://localhost:8080/ | jq '.'
```
And when making a **GET** request to **"/reverse"**, and passing a text string in the **"text"** parameter, it returns a **JSON** with the same string in reverse , example request using ***curl***:
```bash
curl -s http://localhost:8080/reverse?text=Hello%20World | jq '.'
```
To build the docker image, assuming we are located in the same directory where the ***Dockerfile*** is:
```bash
docker build -t <image_name>:<tag> .
```

To run a container and test it:
```bash
docker run --rm -d --name -p 8080:8080 <container-name> <image_name>:<tag>
```
To make things easier, there is a ***Makefile*** with all these tasks defined with which you can create a container image, test it and publish it to ***Docker Hub*** if necessary.

For more details about container creation check out the ***Dockerfile***.

For more details about creating, running, and publishing the container image, see the ***Makefile***.
