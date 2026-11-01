FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME actionsdockerized
ENV MONGODB_CLUSTER_ADDRESS dbwkaction.ocwu5u1.mongodb.net
ENV MONGODB_USERNAME njeanpierre23_db_user
ENV MONGODB_PASSWORD LYDgL054YE7nyv1A

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]