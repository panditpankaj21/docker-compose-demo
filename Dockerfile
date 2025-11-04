FROM node:20

WORKDIR /app

COPY package* .
COPY ./prisma .

RUN npm install

COPY . .

ENV DATBASE_URL = postgresql://postgres:mysecretpassword@localhost:5432/postgres

RUN npx prisma migrate dev
RUN npx prisma generate
RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]