FROM node:25

WORKDIR /app

COPY package* .
COPY ./prisma .

RUN npm install

COPY . .

RUN npx prisma generate
RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "dev:docker"]