# PHP 7.1 image

This docker image runs php-fpm. Usually you'd like to use this with nginx.

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
* xdebug (disabled by default)

## Config files
Config files can be found in the `/usr/local/etc/php/conf.d` directory.  

## Development
Create custom .ini file and map it as /usr/local/etc/php/conf.d/91-dev.ini
```
xdebug.default_enable = 1
xdebug.remote_autostart = 0
xdebug.remote_connect_back = 1
xdebug.remote_enable = 1
xdebug.remote_handler = "dbgp"
xdebug.remote_port = 9000
xdebug.max_nesting_level = 1000
xdebug.var_display_max_depth = -1
xdebug.var_display_max_children = -1
xdebug.var_display_max_data = -1
xdebug.cli_color = 1

date.timezone = "Europe/Ljubljana"

display_errors = On
error_reporting = -1
html_errors = 1
short_open_tag = On
log_errors = on
```