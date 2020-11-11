start:
	@echo ---- Running set of dKron services ---
	docker-compose up -d --scale dkron-agent=10 --scale dkron-server=10

stop:
	@echo ---- Stopping dKron ----
	docker-compose down

ps:
	@echo ---- process list ----
	docker-compose ps

logs:
	@echo ---- showing logs ----
	docker-compose logs

leader:
	@echo ---- checking leader status ----
	bash leadership.sh
