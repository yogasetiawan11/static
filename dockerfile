FROM node:18-alpine AS builder

WORKDIR /app

RUN addgroup -S worker && \
    adduser -S worker -G worker && \
    chown -R worker:worker /app
    
USER worker
COPY package*.json .
RUN npm install

COPY . .
RUN npm run build

# Stage 2: Create the final image
FROM nginx:alpine

# Copy the static files to the nginx directory
COPY --from=builder /app/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]