FROM node:lts-alpine3.13

WORKDIR /use/app

COPY ./ ./

RUN ["chmod", "+x", "./install.sh"]

RUN ["./install.sh"]

EXPOSE 5000

CMD ["yarn", "start"]
