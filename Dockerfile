FROM oven/bun:alpine

WORKDIR /app

COPY package.json bun.lockb ./

RUN bun install --production --no-optional

COPY . .

ARG EnvironmentVariable

CMD ["bun" , "start"]
