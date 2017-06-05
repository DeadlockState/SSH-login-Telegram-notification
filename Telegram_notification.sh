#!/bin/sh
telegrambot="123456789:SCR8NwQtqFoD3dPSmu99z8um8vN8jfQNYps"
telegramchatid="12345678"

url="https://api.telegram.org/bot"$telegrambot"/sendMessage"

date="$(date "+%F %T")"

if [ -n "$SSH_CLIENT" ] ; then
	ip_address=$(echo $SSH_CLIENT | awk '{print $1}')
	
	reverse_dns=`dig -x $ip_address +short`
	
	if [ -z "$reverse_dns" ] ; then
		reverse_dns=$ip_address
	fi

	message="New remote SSH connection : "$USER"@"$(hostname)" from ["$reverse_dns"](http://whatismyipaddress.com/ip/"$ip_address"#General-IP-Information)
"$date

	curl -s -d "chat_id="$telegramchatid"&text=$message&parse_mode=markdown&disable_web_page_preview=1" $url > /dev/null 2>&1
fi
