#!/bin/bash
echo "Please press ENTER to exit"

PASS='admin'
IP='192.168.1.1'
ACTION='reboot.tri'
ENTRY=''
REGEX='([^0-9]|^)500([^0-9]|$)'

while getopts ":i:p:a:e:r:u:" opt; do
  case $opt in
    i) i="$OPTARG"
    ;;
    p) p="$OPTARG"
    ;;
    a) a="$OPTARG"
    ;;
    e) e="$OPTARG"
    ;;
    r) r="$OPTARG"
    ;;
    u) u="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    ;;
  esac
#  if (( $OPTIND == 1 )); then
#   $i = $IP
#  $p = $PASS
#   $a = $ACTION
   
   
   
   
#fi
done

if [ -z "$i" ]
then 
true
else
IP = i
fi

if [ -z "$p" ]
 then
 true
  
else
PASS=$p



fi
if [ -z "$a" ]
 then
 true
else
ACTION=$a
fi
if [ -z "$e" ]
 then
 true
else
ENTRY=$e
fi
if [ -z "$r" ]
 then
 true
else
REGEX=$r
fi

#if [ -z "$1" ] || [-z "$2" ]
 # then
    #echo "No argument supplied"
#else


while true;
do
RESPONSE=response.txt

status="$(curl -f -s -w %{http_code} -u $u:${PASS} 192.168.1.1 -o $RESPONSE)"
if [ $status = "401" ] || [ $status == '500' ]; 
then
 curl -f -u $u:$PASS -d "$ENTRY" $IP/$ACTION
    break
   fi

  if [[ $(curl -f -u $u:${PASS} ${IP}) =~ $REGEX ]]; then
    curl -f -u $u:$PASS -d "$ENTRY" $IP/$ACTION
    break
   fi
    read -t 0.25 -N 1 input
   if [[ $input = "q" ]] || [[ $input = "Q" ]]; then

       echo
       break 
   fi
   sleep 1
done



