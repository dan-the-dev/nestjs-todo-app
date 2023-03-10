
start-backend:
	docker-compose up -d backend

stop-backend:
	docker-compose down

test-backend:
	docker-compose run --rm backend npm test