FROM node:latest
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ENV PATH /usr/src/app:$PATH
RUN npm install -g @angular/cli
COPY . .
CMD ng serve --host 0.0.0.0