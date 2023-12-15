FROM nginx:alpine

# Copy your fronted files (HTML, Javascript, CSS, etc.) to the default Nginx web root directory
COPY . /usr/share/nginx/html 

# Expose port 80, which Nginx will listen on
EXPOSE 80

# Start Nginx when the container is running
CMD ["nginx", "-g", "daemon off;"]