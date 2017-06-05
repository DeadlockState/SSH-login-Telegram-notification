# SSH-login-Telegram-notification

## About

Sends a Telegram notification when a user is connecting on one of your servers

## Screenshots

![screenshot](http://i.imgur.com/8N2h0zf.png)

## Installation

### Pre-requisites

- curl installed on your server
- A Telegram Bot (see [here](https://core.telegram.org/bots#creating-a-new-bot) how to create a new Telegram bot)
- Your Telegram user ID (you can get it [here](https://telegram.me/myidbot))

```shell
cd /etc/profile.d/

wget https://raw.githubusercontent.com/Punk--Rock/SSH-login-Telegram-notification/master/Telegram_notification.sh
```

- Edit ```telegrambot``` and ```telegramchatid``` variables in Telegram_notification.sh with your Telegram bot token and your Telegram user ID

## Source

[![GitHub](https://cdn0.iconfinder.com/data/icons/octicons/1024/mark-github-24.png)](https://github.com/MyTheValentinus/) Valentin Deville and his [ssh-login-alert-telegram](https://github.com/MyTheValentinus/ssh-login-alert-telegram) version

## Contact me

[![Twitter](https://cdn1.iconfinder.com/data/icons/logotypes/32/twitter-24.png)](https://twitter.com/Punk__R0ck) [@Punk__R0ck](https://twitter.com/Punk__R0ck)
