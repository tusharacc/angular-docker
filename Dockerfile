FROM node:latest
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ENV PATH /usr/src/app:$PATH
RUN npm install
RUN npm install -g @angular/cli
COPY . .
EXPOSE 4200
CMD ng serve --host 0.0.0.0