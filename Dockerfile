FROM node AS builder
WORKDIR /build
COPY ./src/package*.json ./
RUN npm install
COPY ./src ./
COPY entrypoint.sh ./
Run chmod +x entrypoint.sh

FROM node:16-alpine
WORKDIR /cowsay
COPY --from=builder /build/ ./

ENTRYPOINT [ "./entrypoint.sh" ]