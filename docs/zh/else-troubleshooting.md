# 故障处理

此处收集使用 Rocket.Chat 过程中最常见的故障，供您参考

> 大部分故障与云平台密切相关，如果你可以确认故障的原因是云平台造成的，请参考[云平台文档](https://support.websoft9.com/docs/faq/zh/tech-instance.html)

#### 如何查看错误日志？

日志文件路径为：`/data/logs`。检索关键词 **Failed** 或者 **error** 查看错误

#### Rocket.Chat服务无法启动？

服务无法启动最常见的问题包括：磁盘空间不足，内存不足，配置文件错误。  
建议先通过命令进行排查  

```shell
# 查看磁盘空间
df -lh

# 查看内存使用
free -lh

# 查看服务状态和日志
systemctl status rocketchat
journalctl -u rocketchat
```

#### 在Chrome下修改密码后报错？

这个并不是服务器端的问题，只要更新浏览器即可。

![chrome error of Rocket.Chat](https://libs.websoft9.com/Websoft9/DocsPicture/zh/rocketchat/rocketchat-chromeerror-websoft9.png)

