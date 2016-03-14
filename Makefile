build: Dockerfile
	docker build -t cs-training-devops .
run_local: ../cs-training-devops-source-doc/
	docker run -p 4567:4567 -v $(pwd)/../cs-training-devops-source-doc:/app/slate/source -d cs-training-devops
download:
	git clone https://cs-pedro-azevedo@bitbucket.org/cs-pedro-azevedo/cs-training-devops-source-doc.git ../cs-training-devops-source-doc
run:
	docker run -p 4567:4567 -v $(pwd)/../cs-training-devops-source-doc:/app/slate/source -d cspedroazevedo/cs-training-devops
