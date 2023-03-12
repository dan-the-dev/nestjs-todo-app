import { Controller, Get } from '@nestjs/common';
import { AppService, Movie } from './app.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  getMovies(): Promise<Movie[]> {
    return this.appService.getMovies();
  }
}
