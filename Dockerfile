FROM node:17

LABEL name="Daegon Lee" 
LABEL email="daegon.lee@navercorp.com"

RUN sudo npm i -g @nestjs/cli
RUN sudo npm i -g pm2

ADD dist /usr/src/nestJS
ADD package.json /usr/src/nestJS
ADD package-lock.json /usr/src/nestJS
ADD .env /usr/src/nestJS

WORKDIR /usr/src/nestJS
RUN npm i

EXPOSE 80
CMD npm run start:prod