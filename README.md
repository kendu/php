# PHP 7.1 image

FPM: This docker image runs php-fpm. Usually you'd like to use this with nginx.
CLI: straightforward cli...

## Included modules
* gd 
* iconv
* mcrypt
* exif
* pgsql with pdo_mgsql
* intl
* mysqli with pdo_mysql
* intl
* sockets
* opcache
* xdebug (in cli & fpm-dev)

## Config files
Config files can be found in the `/usr/local/etc/php/conf.d` directory.  
