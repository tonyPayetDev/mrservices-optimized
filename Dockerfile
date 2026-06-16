FROM nginx:alpine

# Copy website files to nginx public directory
COPY . /usr/share/nginx/html/

# Copy custom nginx config for SPA routing
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
