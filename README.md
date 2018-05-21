# wordpress-deploy-script
Deploy wordpress on LAMP stack in just a few seconds
Ever had a boring problems with deploying wordpress on lamp server? 

Well I have. Becouse of that I made a simple script to automate this process in just a few seconds.

The script will download the latest wordpress, extract and move files and write necessary permissions.

Instructions:

Create the folder where your website should be located.

It should be something like this:

1. Navigate to apache root folder

cd /var/www/

2. Create folder for your website

mkdir mywebsite

3.Navigate to that folder

cd mywebsite

4.Download the script from github to mywebsite folder or copy it to website root.

https://github.com/miljanbrakocevic/wordpress-deploy-script

5. Grant permissions to execute shell

chmod -x wpscript.sh

6. Execute the script:

bash wpscript.sh

Done! The rest is on you, to put your domain pointed to your website folder and to configure apache hosts.

Thank you! If you have any problems please make sure to post it on Github! 
