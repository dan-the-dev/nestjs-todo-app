
start-backend:
	docker-compose up -d backend

stop-backend:
	docker-compose down

npm-test:
	docker-compose run --rm backend npm run test

npm-test-e2e:
	docker-compose run --rm backend npm run test:e2e