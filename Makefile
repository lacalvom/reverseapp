USER=lacalvom
IMAGE=reserverapp:latest

.PHONY: build push

default: build

build:
	docker build -t $(USER)/$(IMAGE) .

debug:
	docker run --rm -d -p 8080:8080 --name reverseapp $(USER)/$(IMAGE)
	# to debug inside of container.	
	# docker run --rm -it --name reverseapp $(USER)/$(IMAGE) bash

push:
	docker login
	docker push $(USER)/$(IMAGE)