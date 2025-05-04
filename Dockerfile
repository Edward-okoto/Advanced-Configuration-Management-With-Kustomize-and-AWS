# Use lightweight Nginx Alpine image as the base
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy application files to the container
COPY . /usr/share/nginx/html

# Expose the port used by Nginx
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]