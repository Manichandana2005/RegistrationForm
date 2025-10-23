# Use an official Nginx image from Docker Hub
FROM nginx:latest

# Copy your HTML file into the default Nginx folder
COPY registration.html /usr/share/nginx/html/

# Expose port 80 to access the website
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
