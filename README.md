docker-compose - 

version: '3.5'
services: 
    angular-service:
        container_name: angularcontainer
        build: ./angular-app
        volumes:
          - './angular-app:/usr/src/app'
        ports:
          - '4200:4200'
        command: bash -c "npm install && ng serve --host 0.0.0.0 --port 4200"