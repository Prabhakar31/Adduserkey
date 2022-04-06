!#/bin/bash
cd /home
ls -l > /tmp/user/usersinfo.txt
cat /tmp/user/usersinfo.txt  | tr -s ' '|cut -d ' ' -f3 > /tmp/user/users.txt
while read usr; do
     cp /home/$usr/.ssh/authorized_key  /tmp/user/$usr.pub
done < /tmp/user/users.txt
cd /tmp
zip -r userpub.zip  user
