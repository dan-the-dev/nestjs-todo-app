
start-backend:
	docker-compose up -d

stop-backend:
	docker-compose down

install:
	docker-compose run --rm backend npm install

build:
	docker-compose run --rm backend npm run build

npm-test:
	docker-compose run --rm backend npm run test

npm-test-e2e:
	docker-compose run --rm backend npm run test:e2e

npm-test-e2e:
	docker-compose run --rm backend npm run test:e2e

npm-install:
	docker-compose run --rm backend npm install --save $(lib)

npm-install-dev:
	docker-compose run --rm backend npm install --save-dev $(lib)

migrate:
	docker-compose run --rm backend npx prisma migrate dev --name $(name)

seed:
	docker-compose run --rm backend npx prisma db seed

generate-resource:
	docker-compose run --rm backend nest generate resource $(name)