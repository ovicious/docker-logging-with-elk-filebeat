include .env

swarm-node-label-elk:
	docker node update --label-add elasticsearch=true --label-add logstash=true --label-add kibana=true $(NODE-NAME)
stack-deploy:
	docker stack deploy --compose-file=elk.yml elk
compose-up:
	docker-compose up -d
compose-down:
	docker-compose down -v