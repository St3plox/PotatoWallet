run:
	mvn clean spring-boot:run

run-db:
	docker run --name postgres -e POSTGRES_DB=potato-wallet -e POSTGRES_USER=name -e POSTGRES_PASSWORD=password -p 5432:5432 -d postgres

stop-db:
	docker stop postgres
	docker remove postgres
logs-db:
	postgres