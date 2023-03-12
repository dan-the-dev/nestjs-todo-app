import { Injectable } from '@nestjs/common';
import { PrismaClient } from '@prisma/client';

export interface Movie {
  id: number;
  name: string;
  year: number;
}

const prisma = new PrismaClient();

@Injectable()
export class AppService {
  private movies: Movie[];

  async getMovies(): Promise<Movie[]> {
    this.movies = await prisma.movie.findMany();
    return this.movies;
  }
}
