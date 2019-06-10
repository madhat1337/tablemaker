#!/bin/bash
#Usage: tablemaker [WORDLIST] [RAINBOWTABLE]
#By madhat, edited by jhagrid77
#Don't do anything illegal with this script
#published under the GPLv3

echo "Welcome to tablemaker!"
echo "For all your tablemaking needs"
echo "What kind of hash do you want?"
read hash

if [[ ("$hash" = "md5") || ("$hash" = "MD5") ]]
then
	for x in $(cat $1)
	do
		c=$(echo $x)
		sum=$(echo $c | md5sum | cut -d " " -f 1)
		echo $x $sum >> $2
	done
elif [[ ("$hash" = "sha1") || ("$hash" = "SHA1") ]]
then
	for x in $(cat $1)
	do
		c=$(echo $x)
		sum=$(echo $c | sha1sum | cut -d " " -f 1 )
		echo $x $sum >> $2
	done
elif [[ ("$hash" = "sha512") || ("$hash" = "SHA512") ]]
then
	for x in $(cat $1)
	do
		c=$(echo $x)
		sum=$(echo $c | sha512sum | cut -d " " -f 1)
		echo $x $sum >> $2
	done
elif [[ ("$hash" = "sha256") || ("$hash" = "SHA256") ]]
then
	for x in $(cat $1)
	do
		c=$(echo $x)
		sum=$(echo $c | sha256sum | cut -d " " -f 1)
		echo $x $sum >> $2
	done
elif [[ ("$hash" = "sha224") || ("$hash" = "SHA224") ]]
then
	for x in $(cat $1)
	do
		c=$(echo $x)
		sum=$(echo $c | sha224sum | cut -d " " -f 1)
		echo $x $sum >> $2
	done
elif [[ ("$hash" = "sha384") || ("$hash" = "SHA384") ]]
then
	for x in $(cat $1)
	do
		c=$(echo $x)
		sum=$(echo $c | sha384sum | cut -d " " -f 1)
		echo $x $sum >> $2
	done
fi
