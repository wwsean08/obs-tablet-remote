FROM node:carbon-alpine AS dependencies
EXPOSE 4000
CMD npm run dev
WORKDIR /app
COPY ["package.json", "./"]
RUN npm set progress=false && npm install
COPY . .
RUN npm run build -- --homepage /
