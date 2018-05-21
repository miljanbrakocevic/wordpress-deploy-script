#!/bin/bash
echo 'Downloading wordpress'
curl -# -o wordpress.zip "https://wordpress.org/latest.zip"
######################################################################## 100.0%
echo 'Wordpress downloaded'
echo 'Extracting wordpress..'
unzip wordpress.zip
echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'
echo 'Moving files...'
cd wordpress
find . -maxdepth 1 -exec mv {} .. \;
clear
echo 'Files successfully moved';
echo 'Writing permissions...';
sleep 4 &
sleep 5 & 
wait
find . -type d -exec chmod 755 {} \;
find . -type f -exec chmod 644 {} \;
sleep 4 &
sleep 5 &
wait
cd ..
sudo chown -R www-data:www-data $PWD;
sudo chown -R $(whoami):www-data wp-content
sudo chmod -R 775 wp-content
echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'
sudo rm -rf wordpress;
sudo rm -rf wordpress.zip;
echo 'Permissions granted'
