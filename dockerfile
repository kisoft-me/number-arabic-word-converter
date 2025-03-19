FROM node
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN chmod 775 /app
EXPOSE 3000
CMD ["node","app.js"]
