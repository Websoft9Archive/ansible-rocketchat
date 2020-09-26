# 参数

## 组件及路径

Rocketchat部署包中不仅仅只有Rocketchat本身，还包含一序列支持Rocketchat运行所需的其他软件（这里称之为组件），下面列出主要组件名称、安装路径、配置文件地址等重要的信息：

### Rocketchat

Rocketchat安装目录: /data/wwwroot/Rocket.Chat
Rocketchat配置文件：/data/wwwroot/Rocket.Chat/rocketchat.conf

### MongoDB
MongoDB存储目录：/data/mongo
配置文件目录：/etc/mongod.conf
日志文件目录：/var/log/mongodb/mongod.log


### Nodejs
Node configuration file: /usr/include/node/config.gypi

### Nginx
Nginx vhost configuration file: /etc/nginx/conf.d/default.conf
Nginx configuaration file: /etc/nginx/nginx.conf
Nginx logs file: /var/log/nginx/

## 端口号

下面是您在使用本镜像过程中，需要用到的端口号，请通过云控制台安全组进行设置

| 名称 | 端口号 | 用途 |  必要性 |
| --- | --- | --- | --- |
| HTTP | 80 | 通过http访问Rocketchat | 必须 |
| HTTPS | 443 | 通过https访问Rocketchat | 可选 |
| adminmongo | 9091 | MongoDB可视化管理面板 | 可选 |
| MongoDB | 27017 | MongoDB远程连接端口 | 可选 |

## 版本号

组件对应的基本版本号可以通过云市场商品页面查看，但部署到您的服务器之后，版本会有一定的升级，故更为精准的版本请通过在服务器上运行命令查看：

```shell
Nginx:
nginx -v

Node.js Verison:
node --version

Docker:
docker --version

MongoDB:
mongo --version

```