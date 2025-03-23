FROM node:8.11-alpine
WORKDIR /cowsay
COPY ./src/package*.json ./
RUN npm install
COPY ./src ./
COPY entrypoint.sh ./
Run chmod +x entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]