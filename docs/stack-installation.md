# Initial Installation

If you have completed the Rocket.Chat deployment on Cloud Platform, the following steps is for you to start use it quikly

## Preparation

1. Get the **Internet IP** on your Cloud Platform
2. Check you **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the TCP:8161 is allowed
3. Make a domain resolution on your DNS Console if you want to use domain for Rocket.Chat

## Rocket.Chat Installation Wizard

1. Using local Chrome or Firefox to visit the URL *http://DNS* or *http://Internet IP*, you will enter installation wizard of Rocket.Chat
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/rocketchat/rocketchat-login-websoft9.png)

2. According to the wizard prompts, enter the organization name, user name, password and other key information to complete the initial configuration  
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/rocketchat/rocketchat-set-websoft9.png)
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/rocketchat/rocketchat-setok-websoft9.png)

3. Click [go to your workspace] and you can use the online Rocket.chat
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/rocketchat/rocketchat-startchat-websoft9.png)

4. Adminstrator access Rocket.Chat-add users, can add users from the background
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/rocketchat/rocketchat-adduser-websoft9.png) 

5. Visit the URL*http://域名* 或 *http://Internet IP*, you can also apply for registration
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/rocketchat/rocketchat-register-websoft9.png) 
   
> More useful Rocket.Chat guide, please refer to [Rocket.Chat Documentation](https://docs.rocket.chat/guides/user-guides)

## Q&A

#### I can't visit the start page of Rocket.Chat?

Your TCP:80 of Security Group Rules is not allowed so there no response from Chrome or Firefox

#### Rocket.Chat service can't start? 