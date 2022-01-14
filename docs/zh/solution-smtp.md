# SMTP

大量用户实践反馈，使用**第三方 SMTP 服务发送邮件**是一种最稳定可靠的方式。  

请勿在服务器上安装sendmail等邮件系统，因为邮件系统的路由配置受制与域名、防火墙、路由等多种因素制约，非常不稳定，且不易维护、诊断故障很困难。

下面以**网易邮箱**为例，提供设置 Rocket.Chat 发邮件的步骤：

1. 在网易邮箱管理控制台获取 SMTP 相关参数
   ```
   SMTP host: smtp.163.com
   SMTP port: 465 or 994 for SSL-encrypted email
   SMTP Authentication: must be checked
   SMTP Encryption: must SSL
   SMTP username: websoft9@163.com
   SMTP password: #wwBJ8    //此密码不是邮箱密码，是需要通过163邮箱后台设置去获取的授权码
   ```
2. 登录 Rocket.Chat 控制台

3. 依次打开：【管理】>【设置】>【电子邮箱】>【SMTP】项，填写 SMTP 参数
   ![Rocket Chat SMTP](https://libs.websoft9.com/Websoft9/DocsPicture/zh/rocketchat/rocketchat-smtp-websoft9.png)

4. 点击【向我自己发送邮件测试】

更多邮箱设置（QQ邮箱，阿里云邮箱，Gmail，HotMail等）以及无法发送邮件等故障之诊断，请参考由 Websoft9 提供的 [SMTP 专题指南](https://support.websoft9.com/docs/faq/zh/tech-smtp.html)
