!#/bin/bash


sudo apt-get update
sudo apt-get -y install nginx
systemctl is-active nginx
sudo systemctl start nginx

echo "NGINX SCRIP TIS RUNNUNH"
sleep 1

if [[ systemctyl is-active nginx ]]
then
echo  "lab directory is being created"
sleep 1
mkdir /var/www/html/labs
echo "changing ownership form root to $USER"
sleep 1
chown $USER:root /var/www/html/labs
echo "creating html symbolic link"
sleep 1
ln -s /var/www/html/labs html

echo "creating webpage"
sleep 1

cd html
touch index.html
echo" adding content to html flile"
sleep 1
echo "<html><body><h1>HELLO IT IS I</h1></body></html>" >>index.html

else
echo "error occured"
exit 1

fi
