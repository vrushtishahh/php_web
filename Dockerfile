# Use the official PHP image as the base image
FROM php:apache

# Install mysqli extension
RUN docker-php-ext-install mysqli

# Copy your PHP files into the container
COPY . /var/www/html/

# Set environment variables for database connection
ENV DB_SERVER "render-mysql-hostname"
ENV DB_USERNAME "render-mysql-username"
ENV DB_PASSWORD "render-mysql-password"
ENV DB_DATABASE "render-mysql-database-name"

# Expose port 80
EXPOSE 80
