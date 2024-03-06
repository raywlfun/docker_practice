.PHONY: jupyter

jupyter:
	docker-compose up -d

logs:
	docker-compose logs

down:
	docker-compose down
