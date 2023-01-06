FROM node:18



WORKDIR /usr/app
COPY package*.json ./
COPY prisma ./prisma/

COPY . .

RUN npm install
RUN npx prisma migrate dev --name init

RUN ls

EXPOSE 3302
EXPOSE 5432
CMD [ "npm", "start:dev" ]