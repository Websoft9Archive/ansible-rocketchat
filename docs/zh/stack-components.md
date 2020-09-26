# 参数

## 组件及路径

Neo4j部署包中不仅仅只有Neo4j本身，还包含一序列支持Neo4j运行所需的其他软件（这里称之为组件），下面列出主要组件名称、安装路径、配置文件地址等重要的信息：

### Neo4j

Neo4j安装目录: /data/wwwroot/scratch/build
Neo4j配置文件目录: /etc/neo4j/neo4j.conf
数据存储目录: /var/lib/neo4j

### Java
Java安装目录：/usr/lib/jvm


### Nginx
Nginx vhost configuration file: /etc/nginx/conf.d/default.conf
Nginx configuaration file: /etc/nginx/nginx.conf
Nginx logs file: /var/log/nginx/

## 端口号

下面是您在使用本镜像过程中，需要用到的端口号，请通过云控制台安全组进行设置

| 名称 | 端口号 | 用途 |  必要性 |
| --- | --- | --- | --- |
| HTTP | 80 | 通过http访问Neo4j | 必须 |
| HTTPS | 443 | 通过https访问Neo4j | 可选 |
| neo4j | 7687 | neo4j WebSocke | 必选 |

## 版本号

组件对应的基本版本号可以通过云市场商品页面查看，但部署到您的服务器之后，版本会有一定的升级，故更为精准的版本请通过在服务器上运行命令查看：

```shell
Nginx version:
nginx -v

OpenJDK:
java -version

```