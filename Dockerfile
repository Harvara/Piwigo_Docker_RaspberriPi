FROM arm32v7/ubuntu

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Update and install required packages
RUN apt-get update && apt-get install -y \
    curl \
    screen \
    vim \
    apache2 \
    php \
    mysql-server \
    php-imagick \
    php-mysqli \
    unzip \
    php-gd \
    php-mysql \
    php-curl \
    libapache2-mod-php \
    php-mbstring \
    && apt-get clean

# Configure Apache and PHP
RUN a2enmod rewrite
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Expose ports
EXPOSE 80

# Start Apache and MySQL services
CMD ["apachectl", "-D", "FOREGROUND"]
