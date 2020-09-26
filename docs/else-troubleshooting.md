# Troubleshooting

We collect the most common troubleshooting of using Rocket.Chat for your reference:

> Instance troubleshooting is closely related to the Instance provider that is Cloud Platform, refer to [Cloud Platform Documentation](https://support.websoft9.com/docs/faq/tech-instance.html)

#### How can I use the logs?

You can find the keywords **Failed** or **error** from the logs directory: `/data/logs`

#### Rocket.Chat service can't start?

Insufficient disk space, insufficient memory, and configuration file errors can make service could not be started  

It is recommended to first check through the command.

```shell
# restart Rocket.Chat service
systemctl status rocketchat
journalctl -u rocketchat

# view disk space
df -lh

# view memory rate
free -lh
```

#### Error in Chrome when modify password?

This error is not attribute to Rocket.Chat server, once you have upgraded you local Chrome, it solved

![chrome error of Rocket.Chat](https://libs.websoft9.com/Websoft9/DocsPicture/zh/rocketchat/rocketchat-chromeerror-websoft9.png)
