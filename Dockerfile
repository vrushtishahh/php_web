# Use the official PHP image as the base image
FROM php:apache

# Install mysqli extension
RUN docker-php-ext-install mysqli

# Copy your PHP files into the container
COPY . /var/www/html/

# Expose port 80
EXPOSE 80


