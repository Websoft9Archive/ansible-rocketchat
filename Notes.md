#  Rocket.Chat Notes

责任人：zxc

---
 
文档：[安装](https://docs.rocket.chat/installation/manual-installation/) | [配置](https://docs.rocket.chat/installation/manual-installation/ubuntu/)  
平台： Debian家族 | RHEL家族 | Windows | macOS等数十种（[详情](https://github.com/RocketChat/Rocket.Chat#deployment)）



## 概要

Rocket.Chat 是一个开源在线聊天软件。

## 环境要求

* 程序语言：JavaScript/Node.js, Meteor框架
* 应用服务器：Nginx
* 数据库：MongoDB
* 依赖组件： 
* 其他：

## 安装说明

官方提供手动下载安装和[Ansible自动化安装](https://github.com/RocketChat/Rocket.Chat.Ansible)两种选项。经过评估，我们采用手工安装方式

经过研究，CentOS和Ubuntu安装没有差异，故下面仅列出安装的步骤概要以及特别需要注意的地方：

1. 安装Node.js, Nginx, MongoDB等环境
2. 下载Rocket.Chat，并通过NPM安装依赖包
3. 配置MongoDB集群，并初始化数据库
4. 配置Rocket.Chat服务
5. 运行

安装过程中，有几个容易犯错的地方：

1. 官方要求修改 mongo.conf 引擎的设置，但当前不做任何修改，RocketChat也可以运行。如果安装官方这条命令修改，会导致MongoDB无法启动
   ```
   sudo sed -i "s/^#  engine:/  engine: mmapv1/"  /etc/mongod.conf 
   ```
2. MongoDB初始Task在Ubuntu下报错，研究发现，主要是此Task之前有一个重启MongoDB的Task。估计是MongoDB还没有完全重启导致无法初始化。
   ```
   mongo --eval "printjson(rs.initiate())"
   ```
   解决方案：初始化之前 sleep 3s


## 路径

* 程序路径：*/data/wwwroot/rocketchat*  
* 日志路径： 
* 配置文件路径：
* 其他...

## 配置

无

## 账号密码

### 数据库密码

采用免账号和密码连接MongoDB

### 后台账号

* 登录地址：
* 账号密码：自行注册设置

## 服务

官方提供了服务的模板，需要手工创建。具体见Ansible项目中的 rocketchat.service

## 环境变量

官方文档提供了4个环境变量，要求写到服务中

## 版本号

暂时没有找到版本号查询方案

## 常见问题

#### 有没有管理控制台？

有，通过 *http://公网IP:3000* 访问

#### 本项目需要开启哪些端口？
| item       | port  |
| --------- | ----- |
|mongod |  27017|  
|node   |3000  |

#### 有没有CLI工具？

rocketchatctl
