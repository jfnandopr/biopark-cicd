all: docker-build start

docker-build:
	docker build -t jfnandopr/my-grails-app -f "docker/Dockerfile" .

start:
	docker-compose -f docker-compose.yml up -d

infra-apply:
	cd terraform && terraform init
	cd terraform && terraform apply

infra-destroy:
	cd terraform && terraform destroy

infra-install:
	cd ansible && ansible-playbook -i inventory.yaml playbook.yaml
