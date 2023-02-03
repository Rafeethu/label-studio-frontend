FROM node:16.19.0 AS build

#RUN apt update || : && apt install python -y

WORKDIR /label-studio

COPY package*.json .

RUN npm install --force

#COPY . .

EXPOSE 3000

CMD ["npm", "start"]


#FROM nginx AS WEB

#COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

#COPY --from=build /label-studio/build /usr/share/nginx/html