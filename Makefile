.PHONY: help build up down logs restart migrate shell fixture

help: ## Show this help message
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'

build: ## Build the Docker image
	docker compose build

up: ## Start the containers (pass HOST_HOSTNAME automatically)
	@echo "Setting HOST_HOSTNAME=$$(hostname)"
	HOST_HOSTNAME=$$(hostname) docker compose up -d

down: ## Stop and remove containers
	docker compose down

logs: ## Follow container logs
	docker compose logs -f

restart: ## Restart containers
	HOST_HOSTNAME=$$(hostname) docker compose restart

migrate: ## Run database migrations and collect static files
	docker compose exec web python manage.py migrate
	docker compose exec web python manage.py collectstatic --noinput

shell: ## Open a Django shell in the container
	docker compose exec web python manage.py shell

fixture: ## Regenerate fixtures/allfixtures.json from the current database
	QUOTES_DB_PATH=./quotes_db/db.sqlite3 .venv/bin/python manage.py export_allfixtures
