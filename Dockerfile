# Use lightweight Nginx image
FROM nginx:stable-alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files into Nginx html directory
COPY ./registration-form /usr/share/nginx/html

# Expose port 80 (for web traffic)
EXPOSE 80

# Start Nginx server (default command)
CMD ["nginx", "-g", "daemon off;"]
