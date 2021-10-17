#!/bin/bash
#################################################
# experiment in bash for submit flag from bash in HackMyVM
# creator : b4el7d
# Twitter : @b4el7d @avijneyam @sml
# Website : https://hackmyvm.eu
##################################################
username="**********"
password="**********"


url="https://hackmyvm.eu"
path1="/machines/checkflag.php"
authurl=$url'/login/auth.php'
urlFullCheck=$url""$path1
userAgent="Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0"
accept="text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"
language="en-US,en;q=0.5"
PHPSESSIONID="0pqlf17l7aua8k2gme3lkfbbff"
check='<h2 class="profile-username font-weight-bold mb-0">'$username"</h2>"

if [[ $password == "*************" ]] || [[ $username == "**********" ]]
then
	echo -e "Insert USERNAME and PASSWORD"
	exit
fi	
if [[ $# -ne 2 ]]
then  	
  	echo -e "Usage:\n\nbash ./HMVcheckflag.sh Machinename Flag "
  	exit
fi



echo " _       _ _  __ __  _ _       _       "
echo "| | ___ | | ||  \  \| | | ___ | |      "
echo "|_/|___||   ||     || ' ||___||_/      "
echo "<_>     |_|_||_|_|_||__/      <_>      "
echo "                                       "
echo '           ___  _ _  _ __              '
echo ' ___  ___ |  _>| | || / /___  ___      '
echo '|___||___|| <__|   ||  \|___||___|     '
echo '          `___/|_|_||_\_\              '
echo '                                       '
echo ' _       ___  _    ___        _        '
echo '| | ___ | __>| |  /  _>  ___ | |       '
echo '|_/|___|| _> | |_ | <_/\|___||_/       '
echo '<_>     |_|  |___|`____/     <_>       '






login=$(bash -c "curl -s '$authurl' -H 'User-Agent: $useragent' -H 'Accept: $accept' -H 'Accept-Language: $language' --compressed -H 'Content-Type: application/x-www-form-urlencoded' -H 'Origin: $url' -H 'Connection: keep-alive' -H 'Referer: $url/login/' -H 'Cookie: PHPSESSID=$PHPSESSIONID' -H 'Upgrade-Insecure-Requests: 1' --data-raw 'admin=$username&password_usuario=$password' -X POST -L")

if [[ $login == *"$check"* ]]
	then
		echo "****************************"
		echo "Logged: $username"
		echo "****************************"
		echo "############################"
		echo "[*]CHECKING[*]"
		echo "Machine: $1"
		echo "Flag try: $2"
		echo "ID: $PHPSESSIONID"
		echo "############################"
		returnReq=$(bash -c "curl -s '$urlFullCheck' -H 'User-Agent: $useragent' -H 'Accept: $accept' -H 'Accept-Language: $language' --compressed -H 'Referer: $url/machines/machine.php?vm=$1' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Origin: $url' -H 'Connection: keep-alive' -H 'Cookie: PHPSESSID=$PHPSESSIONID' -H 'Upgrade-Insecure-Requests: 1' -H 'Cache-Control: max-age=0' --data-raw 'flag='$2'&vm='$1''")
		if [[ $returnReq == *"The flag submitted is wrong :("* ]]
		then
			echo " ________ ______ _______ _______ _______ _______ _____   _______ _______ "
			echo "|  |  |  |   __ \       |    |  |     __|    ___|     |_|   _   |     __|"
			echo "|  |  |  |      <   -   |       |    |  |    ___|       |       |    |  |"
			echo "|________|___|__|_______|__|____|_______|___|   |_______|___|___|_______|"
			echo "                                                                         "
		elif [[ $returnReq == *"Correct Flag Submitted! Congrats!"* ]] || [[ $returnReq == *"Correct Flag Submitted! Congrats!."* ]]
			then
			echo " _______  _____   ______  ______ _______ _______ _______ _______        _______  ______ "
			echo " |       |     | |_____/ |_____/ |______ |          |    |______ |      |_____| |  ____ "
			echo " |_____  |_____| |    \_ |    \_ |______ |_____     |    |       |_____ |     | |_____| "
			echo "                                                                                        "
			echo "                                   .     **                                     "
			echo "                                *           *.                                  "
			echo "                                              ,*                                "
			echo "                                                 *,                             "
			echo "                         ,                         ,*                           "
			echo "                      .,                              *,                        "
			echo "                    /                                    *                      "
			echo "                 ,*                                        *,                   "
			echo "               /.                                            .*.                "
			echo "             *                                                  **              "
			echo "             ,*                                               ,*                "
			echo "                **                                          *.                  "
			echo "                   **                                    **.                    "
			echo "                     ,*                                **                       "
			echo "                        *,                          ,*                          "
			echo "                           *                      **                            "
			echo "                             *,                .*                               "
			echo "                                *.           **                                 "
			echo "                                  **      ,*,                                   "
			echo "                                     ** *,  HackMyVM"
		elif [[ $returnReq == *"You have submitted this flag in the past!"* ]]
			then
			echo " _____ __    _____ _____    _____ __    _____ _____ _____ ____  __ __    _____ _____ _____ _____ ____  "
			echo "|   __|  |  |  _  |   __|  |  _  |  |  | __  |   __|  _  |    \|  |  |  |   __|     |  |  |   | |    \ "
			echo "|   __|  |__|     |  |  |  |     |  |__|    -|   __|     |  |  |_   _|  |   __|  |  |  |  | | | |  |  |"
			echo "|__|  |_____|__|__|_____|  |__|__|_____|__|__|_____|__|__|____/  |_|    |__|  |_____|_____|_|___|____/ "
                                                                                                       

		elif [[ $returnReq == *"You have finished this VM!"* ]]
			then
			echo " _____ _____ _____ _____ _____ _____|  |"
			echo "|   __|     |   | |     |   __|  |  |  |"
			echo "|   __|-   -| | | |-   -|__   |     |__|"
			echo "|__|  |_____|_|___|_____|_____|__|__|__|"
		else
		  	echo $returnReq
fi
fi
echo "############################"

