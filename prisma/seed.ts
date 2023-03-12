import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
  const theForceAwakens = await prisma.movie.create({
    data: {
      name: 'Star Wars: The Force Awakens',
      year: 2015,
    },
  });
  const theLastJedi = await prisma.movie.create({
    data: {
      name: 'Star Wars: The Last Jedi',
      year: 2017,
    },
  });
  const theRiseOfSkywalker = await prisma.movie.create({
    data: {
      name: 'Star Wars: The Rise of Skywalker',
      year: 2019,
    },
  });

  console.log(theForceAwakens, theLastJedi, theRiseOfSkywalker);
}
main()
  .then(async () => {
    await prisma.$disconnect();
  })
  .catch(async (e) => {
    console.error(e);
    await prisma.$disconnect();
    process.exit(1);
  });
