# Use the official Nginx image based on Alpine Linux - lightweight and good for K8s
FROM nginx:stable-alpine

# Remove default Nginx server configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom Nginx configuration created above
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the icon files into a subdirectory within the Nginx web root
# This makes them accessible via http://<server>/icons/
COPY ./icons /usr/share/nginx/html/protocol-icons

# Expose port 80 (the default Nginx port)
EXPOSE 80
