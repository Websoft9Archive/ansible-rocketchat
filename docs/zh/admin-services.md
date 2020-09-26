# 服务启停

使用由Websoft9提供的 Rocket.Chat 部署方案，可能需要用到的服务如下：

### Rocket.Chat

```shell
sudo systemctl start rocketchat
sudo systemctl stop rocketchat
sudo systemctl restart rocketchat
sudo systemctl status rocketchat

```

## PM2

```shell
systemctl start pm2-root
systemctl stop pm2-root
systemctl restart pm2-root
systemctl status pm2-root
```

## Nginx

```shell
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
sudo systemctl status nginx
```

## MongoDB

```shell
systemctl start mongod
systemctl stop mongod
systemctl restart mongod
systemctl status mongod
```

## Docker

```shell
sudo systemctl start docker
sudo systemctl restart docker
sudo systemctl stop docker
sudo systemctl status docker
```
