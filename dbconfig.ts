import { DataSource } from 'typeorm';

const AppDataSource = new DataSource({
  type: 'postgres',
  host: process.env.PGHOST,
  port: 5432,
  username: process.env.PGUSER,
  password: process.env.PGPASSWORD,
  database: process.env.PGDATABASE,
  entities: ['src/entities/*{ .ts,.js}'],
  migrations: ['db/migrations/*{.ts,.js}'],
  synchronize: true,
  logging: false,
});

export default AppDataSource;
