all: docker-build start

docker-build:
	docker build -t jfnandopr/my-grails-app -f "docker/Dockerfile" .

docker-deploy:
	docker push jfnandopr/my-grails-app

start:
	docker-compose -f docker-compose.yml up -d

cloud-create:
	cd terraform && terraform init
	cd terraform && terraform apply

cloud-destroy:
	cd terraform && terraform destroy

cloud-install:
	cd ansible && ansible-playbook -i inventory.yaml playbook.yaml
