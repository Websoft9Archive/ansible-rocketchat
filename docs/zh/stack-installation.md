# 初始化安装

在云服务器上部署 Rocket.Chat 预装包之后，请参考下面的步骤快速入门。

## 准备

1. 在云控制台获取您的 **服务器公网IP地址** 
2. 在云控制台安全组中，检查 **Inbound（入）规则** 下的 **TCP:80** 端口是否开启
3. 若想用域名访问 Rocket.Chat，请先到 **域名控制台** 完成一个域名解析

## Rocket.Chat 安装向导

1. 使用本地电脑的 Chrome 或 Firefox 浏览器访问网址：*http://域名* 或 *http://Internet IP*, 进入初始化页面
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/rocketchat/rocketchat-wizard-websoft9.png)

2. 根据向导提示，输入组织名称，用户名，密码等关键信息，完成初始配置 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/rocketchat/rocketchat-set-websoft9.png)
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/rocketchat/rocketchat-setok-websoft9.png)

3. 点击【转到您的工作区】，您就可以使用在线聊天功能   
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/rocketchat/rocketchat-startchat-websoft9.png)

4. 后台进入管理-添加用户，管理员可以从后台追加用户
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/rocketchat/rocketchat-adduser-websoft9.png) 

5. 其他用户输入*http://域名* 或 *http://Internet IP*, 还可以申请注册
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/rocketchat/rocketchat-register-websoft9.png)   

> 需要了解更多 Rocket.Chat 的使用，请参考官方文档：[Rocket.Chat Documentation](https://docs.rocket.chat/guides/user-guides)

## 常见问题

#### 浏览器打开IP地址，无法访问 Rocket.Chat（白屏没有结果）？

您的服务器对应的安全组80端口没有开启（入规则），导致浏览器无法访问到服务器的任何内容

#### Rocket.Chat 服务启动失败？

暂无