curl https://rclone.org/install.sh | sudo bash
curl 'https://raw.githubusercontent.com/thereisnothinginhere/heroleechbot0sdaf/master/tobrot/helper_funcs/rclone.conf' > rclone.conf
echo Enter The URL
read a
echo Enter The File Name
read b
space=$(expr length "$b" - length `echo "$b" | sed "s/ //g"`)
i=0
while [ "$i" -lt $space ]
do
  b=${b/ /}
  i=`expr $i + 1`
done
curl $a > $b
echo File Downloaded Successfully
rclone copy $b Shared:Torrent --progress --config=rclone.conf