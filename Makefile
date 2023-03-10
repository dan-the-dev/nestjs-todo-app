
start-backend:
	docker-compose up -d

stop-backend:
	docker-compose down

install:
	docker-compose run --rm backend npm install

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

typeorm-create-entity:
	docker-compose run --rm backend npm run typeorm entity:create src/entities/$(name)

typeorm-create-migration:
	docker-compose run --rm backend npm run typeorm migration:create db/migrations/$(name)

typeorm-migration-run:
	docker-compose run --rm backend npm run typeorm migration:run -- -d ./dbconfig.ts

typeorm-migration-revert:
	docker-compose run --rm backend npm run typeorm migration:revert -- -d ./dbconfig.ts