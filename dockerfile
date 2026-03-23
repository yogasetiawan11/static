FROM node:18-alpine AS builder

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# Stage 2: Create the final image
FROM nginx:alpine

# Copy nginx configuration
COPY --from=builder /app/nginx.conf /etc/nginx/conf.d/default.conf

# Copy the built application
COPY --from=builder /app/build /usr/share/nginx/html

# Use default nginx user (safe)
RUN chown -R nginx:nginx /usr/share/nginx/html
USER nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]