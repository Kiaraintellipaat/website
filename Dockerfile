# Use an official WordPress image as a parent image
FROM wordpress:latest

# Set up a custom plugins directory (optional)
RUN mkdir -p /var/www/html/wp-content/plugins/custom-plugins

# Copy your custom theme or plugins (optional)
COPY custom-theme /var/www/html/wp-content/themes/custom-theme
COPY custom-plugin /var/www/html/wp-content/plugins/custom-plugin

# If you have a custom PHP.ini file, you can copy it too
# COPY php.ini /usr/local/etc/php/conf.d/

# Expose port 80 to allow incoming traffic
EXPOSE 80

# Define environment variables
ENV WORDPRESS_DB_HOST=dbhost
ENV WORDPRESS_DB_USER=user
ENV WORDPRESS_DB_PASSWORD=password
ENV WORDPRESS_DB_NAME=dbname

# Start WordPress
CMD ["apache2-foreground"]
