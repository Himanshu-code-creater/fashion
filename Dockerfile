# Step 1: Use the official Nginx image as the base image
FROM nginx:alpine

# Step 2: Copy the HTML, CSS, and JavaScript files to the Nginx directory
COPY ./ /usr/share/nginx/html/

# Step 3: Expose port 80 (the default HTTP port)
EXPOSE 80

# Step 4: The default command to run Nginx
CMD ["nginx", "-g", "daemon off;"]
