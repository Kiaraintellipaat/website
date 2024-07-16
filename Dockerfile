# Use an official WordPress image as a parent image
FROM wordpress:latest

# Define environment variables
ENV WORDPRESS_DB_HOST=dbhost
ENV WORDPRESS_DB_USER=user
ENV WORDPRESS_DB_PASSWORD=password
ENV WORDPRESS_DB_NAME=dbname

# Expose port 80 to allow incoming traffic
EXPOSE 80

# Copy wp-config-docker.php to /var/www/html/wp-config.php
COPY wp-config-docker.php /var/www/html/wp-config.php

# Start WordPress
CMD ["apache2-foreground"]
