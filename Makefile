build:
	docker build . --tag bedded

run:
	docker run --name bedded -p 8080:8080 -v .:/app bedded

terminal:
	docker exec -it bedded /bin/bash

down: 
	docker stop bedded
	docker rm bedded
	