## Manual Installation
 - Inatall nodejs locally
 - clone the repo
 - Install dependencies (npm install)
 - Start the DB locally
    - docker run -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres
    - or Go to neon.tech and get yourself a new DB
 - Change the .env file and update your DB credentials
 - npx prisma migrate
 - npx prisma generate
 - npm run build 
 - npm run start

## Docker installation
 - install Docker
 - Start postgres
    - docker run -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres
 - Build the image - `docker build -t user-project`
 - Strat the image - `docker run -p 3000:3000 user-project`


## Docker Compose installtion steps
 - Install Docker, docker-compose
 - Run `docker-compose up`