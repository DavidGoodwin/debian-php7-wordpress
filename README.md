Docker image for hosting e.g Wordpress with PHP 7.0

## 'features' 

 * dotdeb.org PHP version (7.0)
 * includes msmtp - with default config (allowing wordpress to send out mail via /usr/sbin/sendmail) (the host 'mail' needs to resolve to somewhere that will relay).
 * mount public files at /var/www/html within the container .

## running

```bash

docker run -d -ti davidgoodwin:jessie-php7-wordpress \
    -v /local/path/to/wordpress:/var/www/html \
    --add-host MailRelayName:mail \
    --name=SomethingFriendly \
    -p 8080:80
```

## docker hub

See : https://hub.docker.com/r/davidgoodwin/jessie-php7-wordpress/

