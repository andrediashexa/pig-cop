FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY next.config.js ./
COPY postcss.config.js ./
COPY tailwind.config.js ./
COPY app ./app
COPY src ./src
ARG NEXT_PUBLIC_APP_VERSION=0.0.0
ENV NEXT_PUBLIC_APP_VERSION=$NEXT_PUBLIC_APP_VERSION
ENV NEXT_TELEMETRY_DISABLED=1
RUN npm run build
EXPOSE 5173
CMD ["npm", "run", "start"]
