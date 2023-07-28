#!/bin/sh

echo "----------start----------"

alias "la"="ls -al"
sed -i '$a alias "la"="ls -al"' /etc/profile
echo "Tip: la == ls-al"

y="Y"
read -n 1 -p "Will install Python3 vim git zsh bash [Y/n] >>>" yn1
if(($yn1=$y))
then
	apk add Python3 vim git zsh bash
	echo "succsee"
else
	echo "Do NOT install"
fi

read -n 1 -p "Will install ohmyzsh [Y/n] >>>" yn2
if(($yn2=$y))
then
	sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
	echo "success"
else
	echo "Do NOT install"
fi

echo "----------done----------"
