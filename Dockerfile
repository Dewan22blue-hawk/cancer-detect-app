FROM node:18
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV APP_ENV=production
ENV APP_PORT=8080
ENV MODEL_URL="https://storage.googleapis.com/model-storage-cancer-24/model-in-prod/model.json"
ENV PROJECT_ID="submissionmlgc-denny-irawan"

CMD [ "npm", "start" ]

EXPOSE 8080