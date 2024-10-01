# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Copy the static HTML file into the Nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start the Nginx service
CMD ["nginx", "-g", "daemon off;"]
