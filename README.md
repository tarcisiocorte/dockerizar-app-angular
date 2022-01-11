### Clonar o repositório
````
git clone git@github.com:tarcisiocorte/dockerizar-app-angular.git
````

### Acessar pasta
````
cd dockerizar-app-angular
````

### Buildar imagem
````
docker build -t app-demo:dev .
`````

### Rodar container 
(exponda a porta 80 do container na porta 8080 da máquina local)
````
docker run -d -p 8080:80 app-demo:dev
````
