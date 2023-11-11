FROM node:18.16-alpine

RUN apk add --no-cache git

WORKDIR /app

COPY . /app

RUN chmod +x build.sh 

CMD ["./build.sh"]
