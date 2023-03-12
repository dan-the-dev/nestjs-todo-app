<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="200" alt="Nest Logo" /></a>
</p>

  <p align="center">A progressive <a href="http://nodejs.org" target="_blank">Node.js</a> framework for building efficient and scalable server-side applications.</p>
    <p align="center">
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/v/@nestjs/core.svg" alt="NPM Version" /></a>
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/l/@nestjs/core.svg" alt="Package License" /></a>
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/dm/@nestjs/common.svg" alt="NPM Downloads" /></a>
<a href="https://circleci.com/gh/nestjs/nest" target="_blank"><img src="https://img.shields.io/circleci/build/github/nestjs/nest/master" alt="CircleCI" /></a>
<a href="https://coveralls.io/github/nestjs/nest?branch=master" target="_blank"><img src="https://coveralls.io/repos/github/nestjs/nest/badge.svg?branch=master#9" alt="Coverage" /></a>
<a href="https://discord.gg/G7Qnnhy" target="_blank"><img src="https://img.shields.io/badge/discord-online-brightgreen.svg" alt="Discord"/></a>
<a href="https://opencollective.com/nest#backer" target="_blank"><img src="https://opencollective.com/nest/backers/badge.svg" alt="Backers on Open Collective" /></a>
<a href="https://opencollective.com/nest#sponsor" target="_blank"><img src="https://opencollective.com/nest/sponsors/badge.svg" alt="Sponsors on Open Collective" /></a>
  <a href="https://paypal.me/kamilmysliwiec" target="_blank"><img src="https://img.shields.io/badge/Donate-PayPal-ff3f59.svg"/></a>
    <a href="https://opencollective.com/nest#sponsor"  target="_blank"><img src="https://img.shields.io/badge/Support%20us-Open%20Collective-41B883.svg" alt="Support us"></a>
  <a href="https://twitter.com/nestframework" target="_blank"><img src="https://img.shields.io/twitter/follow/nestframework.svg?style=social&label=Follow"></a>
</p>
  <!--[![Backers on Open Collective](https://opencollective.com/nest/backers/badge.svg)](https://opencollective.com/nest#backer)
  [![Sponsors on Open Collective](https://opencollective.com/nest/sponsors/badge.svg)](https://opencollective.com/nest#sponsor)-->

## Description

[Nest](https://github.com/nestjs/nest) framework TypeScript starter repository.

## Installation

```bash
npm install
```

## Running the app

```bash
# development
$ npm run start

# watch mode
$ npm run start:dev

# production mode
$ npm run start:prod
```

## Test

```bash
# unit tests
$ npm run test

# e2e tests
$ npm run test:e2e

# test coverage
$ npm run test:cov
```

## Support

Nest is an MIT-licensed open source project. It can grow thanks to the sponsors and support by the amazing backers. If you'd like to join them, please [read more here](https://docs.nestjs.com/support).

## Stay in touch

- Author - [Kamil Myśliwiec](https://kamilmysliwiec.com)
- Website - [https://nestjs.com](https://nestjs.com/)
- Twitter - [@nestframework](https://twitter.com/nestframework)

## License

Nest is [MIT licensed](LICENSE).

## Tutorial Documentation

### Objective 1: Walking Skeleton (day 1: Fri 10 March 2023)

Create a basic NestJS application, Dockerized and with a single endpoint. Then, setup a pipeline to deploy it through Vercel.

List of sources:

- Dockerized NestJS tutorial: <https://dev.to/erezhod/setting-up-a-nestjs-project-with-docker-for-back-end-development-30lg>
- Moved NestJS CLI from devDependencies to Dependencies: <https://stackoverflow.com/a/60555301/6894377>
- A second tutorial since Dockerfile from the first article didn't work: <https://www.tomray.dev/nestjs-docker-production>
- Tutorial for deploying NestJS to Vercel: <https://levelup.gitconnected.com/how-to-deploy-your-nestjs-apps-on-vercel-3431b9f2b4c6>

DONE

### Objective 2: move deploy to GitHub Actions + add tests in pipeline

- GitHub Actions deploy for NestJS: <https://blog.devgenius.io/learn-ci-cd-with-github-actions-to-deploy-a-nestjs-app-to-heroku-8feb715d3ce7?gi=20f6423232e7>
- GitHub Action for Vercel deploy: <https://github.com/amondnet/vercel-action>

DONE

### Objective 3: add Postgres support with migrations and ORM/DB library

- NestJS Official Doc about Database: <https://docs.nestjs.com/techniques/database#typeorm-integration> (I choosed TypeORM)
- TypeORM official doc about Migrations: <https://typeorm.io/migrations#creating-a-new-migration>
- Additional blog post for Postgres integration on TypeORM: <https://www.thisdot.co/blog/connecting-to-postgresql-using-typeorm>
- <https://stackoverflow.com/questions/71625087/typeorm-migration-file-must-contain-a-typescript-javascript-code-and-export-a>
- <https://anjith-p.medium.com/typeorm-database-migrations-in-nestjs-apps-ace923edf1bf>
- Seeding: <https://dev.to/franciscomendes10866/how-to-seed-database-using-typeorm-seeding-4kd5>

TODO: (day 2: Sun 12 March 2023)

1. use seeder to fill the Movie table records with the same data from the current API stub --> seeder and faker are incompatible with 0.3 version of typeorm, so faker was't working, trying to do it without fakers (it would have been temporary anyway) --> also seeding seems to be broken, the error seems to be related to this [issue](https://github.com/typeorm/typeorm/issues/4068) but if I change the export still doesn't work and also migrations broke up. will leave seeder by for now, but typeorm seems still a bit unmature
2. add migrations and seeder to pipeline
3. configure postgres env vars from supabase on github actions
4. verify deployment with migrations and seeders

### Objective 4: use the table

Change the API to respond reading Movies from table (with repository pattern and tests)

### Objective 5: start tutorial

<https://taylor-reis.com/blog/building-a-nestjs-crud-app:-part-1/>
<>
