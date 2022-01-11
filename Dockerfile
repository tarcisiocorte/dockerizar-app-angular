# Primeiro passo: compilar e builder código Angular
FROM node:14.17.0 as build
WORKDIR /usr/local/app
COPY ./ /usr/local/app/
RUN npm install
RUN npm run build

# Segundo passo: usar o nginx como server
FROM nginx:latest
COPY --from=build /usr/local/app/dist/app-demo /usr/share/nginx/html

# Exportar a porta 80 que é padrão
EXPOSE 80
