# Step 1: Base image
FROM php:7.4-apache

# Step 2: Install mysqli extension
RUN docker-php-ext-install mysqli

# Step 3: Enable Apache mod_rewrite (often useful for PHP apps)
RUN a2enmod rewrite

# Step 4: Copy application source into Apache doc root
# Assuming your e-commerce app code is in the same directory as this Dockerfile
COPY . /var/www/html/

# Step 5: Set working directory
WORKDIR /var/www/html/

# Optional: If your app has a custom php.ini, copy it
# COPY ./php.ini /usr/local/etc/php/conf.d/custom.ini

# Step 6: Expose HTTP port
EXPOSE 80

