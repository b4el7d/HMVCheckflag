#################################################
# experiment in bash for submit from bash of flags in HackMyVM
# creator : b4el7d
##################################################


if [ $# -ne 3 ];
  then
    echo -e "exec:\nbash ./HMVcheckflag.sh Machinename Flag PHPSESSIONID"
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
                                  


echo "[*]CHECKING[*]"
echo "Machine: $1"
echo "Flag try: $2"
echo "ID: $3"

url="https://hackmyvm.eu"
path1="/machines/checkflag.php"
urlFullCheck=$url""$path1
userAgent="Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0"
accept="text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"
language="en-US,en;q=0.5"


returnReq=$(bash -c "curl -s '$urlFullCheck' -H 'User-Agent: $useragent' -H 'Accept: $accept' -H 'Accept-Language: $language' --compressed -H 'Referer: https://hackmyvm.eu/machines/machine.php?vm=$1' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Origin: $url' -H 'Connection: keep-alive' -H 'Cookie: PHPSESSID=$3' -H 'Upgrade-Insecure-Requests: 1' -H 'Cache-Control: max-age=0' --data-raw 'flag='$2'&vm='$1''")
if [[ $returnReq == *"The flag submitted is wrong :("* ]] ; 
	then
	echo " ________ ______ _______ _______ _______ _______ _____   _______ _______ "
	echo "|  |  |  |   __ \       |    |  |     __|    ___|     |_|   _   |     __|"
	echo "|  |  |  |      <   -   |       |    |  |    ___|       |       |    |  |"
	echo "|________|___|__|_______|__|____|_______|___|   |_______|___|___|_______|"
	echo "                                                                         "

elif [[ $returnReq == *"Correct Flag Submitted! Congrats!."* ]]; 
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
fi
