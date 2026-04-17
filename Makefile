.PHONY: help up down stop logs ps clean
# Variables
COMPOSE_FILE = docker-compose.yml

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

up: ## Start all infrastructure services
	docker compose -f $(COMPOSE_FILE) up -d

down: ## Stop and remove all containers and volumes
	docker compose -f $(COMPOSE_FILE) down -v

stop: ## Stop all infrastructure services
	docker compose -f $(COMPOSE_FILE) stop

logs: ## Show logs for all services
	docker compose -f $(COMPOSE_FILE) logs -f

ps: ## Show status of containers
	docker compose -f $(COMPOSE_FILE) ps

clean: ## Remove containers and clean data (docker prune)
	docker compose -f $(COMPOSE_FILE) down --remove-orphans
	docker system prune -f
