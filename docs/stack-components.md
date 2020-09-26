# Parameters

The Rocket.Chat deployment package contains a sequence software (referred to as "components") required for Rocket.Chat to run. The important information such as the component name, installation directory path, configuration file path, port, version, etc. are listed below.

## Path

### Rocket.Chat

Rocket.Chat installation directory:  */data/wwwroot/rocketchat*  
Rocket.Chat logs directory:  */data/logs/nginx*   

### Nginx

Nginx vhost configuration file: */etc/nginx/conf.d/default.conf*    
Nginx main configuration file: */etc/nginx/nginx.conf*   
Nginx logs file: */var/log/nginx*  
Nginx rewrite rules directory: */etc/nginx/conf.d/rewrite* 

### MongoDB

MongoDB data directory: /var/lib/mongodb
MongoDB Configuration File:  /etc/mongod.conf
MongoDB logs File: /var/log/mongodb   
MongoDB Web Management URL: *http://Internet IP/9091*, get credential from [Username and Password](/stack-accounts.md)

### adminMongo

adminMongo installation directory: */data/apps/adminmongo*  
adminMongo configuration file: */data/apps/adminmongo/config*   

### Node.JS
Node.JS Global Modules Directory: /usr/lib/node_modules
Node.js applicaton root directory: /data/wwwroot
Express demo program: /data/wwwroot/express.example.com
Node.JS Log file: /root/.pm2/pm2.log

## Ports

You can control(open or shut down) ports by **[Security Group Setting](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** of your Cloud Server whether the port can be accessed from Internet.

You can run the cmd `netstat -tunlp` to list all used ports, and we list the following most useful ports for you:

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| HTTP | 3000 | HTTP requests for Rocket.Chat Console| Required |
| TCP | 27017 | mongodb | Optional |

## Version

You can see the version from product page of Marketplace. However, after being deployed to your server, the components will be automatically updated, resulting in a certain change in the version number. Therefore, the exact version number should be viewed by running the command on the server:

```shell
# Check all components version
sudo cat /data/logs/install_version.txt

# Linux Version
lsb_release -a

# Nginx  Version
nginx -V

# Docker Version
docker -v

# mongo  Version
mongo --version | grep MongoDB

# Rocket.Chat version
curl  localhost/api/info
```
