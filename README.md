# PHP 7 image

This docker images runs php-fpm. Usually you'd like to use this with nginx.

## Included modules
* curl
* gmp
* intl
* json
* mcrypt
* pgsql
* mysql
* readline
* sqlite3
* gd

Also includess wget and git


## Config files
Php 7 config files can be found in the `/etc/php/7.0` directory.  
This is different from php5.6, so take care when using your configs in there.  
You will most likelly need the following:
* `/etc/php/7.0/fpm/php-fpm.conf`
* `/etc/php/7.0/fpm/php.ini`
* `/etc/php/7.0/fpm/conf.d/`
* `/etc/php/7.0/fpm/pool.d/`
