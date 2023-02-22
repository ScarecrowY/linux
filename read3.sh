#!/bin/bash
read -p "是否创建文件test1？y/n: " -n 1 -t 10 char
echo
if [ $char == y ]
then 
	read -sp "请输入密码：" -t 10 password1 
	echo
	read -sp "请再次输入密码：" -t 10 password2 
	printf "\n"
	if [[ $password1 == $password2 && $password1 != "" ]]
	then
		echo "两次密码输入一致，验证通过"
		touch test1
	else 
		echo "两次密码输入不一致，验证不通过"
	fi
else
	echo "你输入的n，程序结束"
fi

