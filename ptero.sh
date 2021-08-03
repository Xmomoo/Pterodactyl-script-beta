echo "1. Install pterodactyl"
echo "2. Install wings"
echo "3. Uninstall pterodactyl(This will delete everything"
echo "4. Uninstall wings"
echo "=+=+=+=+=+=+=+Themes=+=+=+=+=+=+=+="
echo "5. black and red"
echo "6. black and purple"
echo "7. Minecraft theme (it sucks)"
echo "=+=+=+=+=+=+=+Others=+=+=+=+=+=+=+="
echo "8. Update the panel (1.4 => 1.5)"

echo "9. Upgrade to wing"
echo "10. Fix your panel"
echo "11. Install MCPASTE"


read -p "Please enter a number: " choice
if [ $choice == "1" ]
    then
   bash <(curl -sL https://raw.githubusercontent.com/vilhelmprytz/pterodactyl-installer/master/install-panel.sh)
fi
if [ $choice == "2" ]
    then
   bash <(curl -sL https://raw.githubusercontent.com/vilhelmprytz/pterodactyl-installer/master/install-wings.sh)
fi
if [ $choice == "3" ]
    then
sudo rm -rf /var/www/pterodactyl

sudo rm /etc/systemd/system/pteroq.service

sudo unlink /etc/nginx/sites-enabled/pterodactyl.conf

sudo unlink /etc/apache2/sites-enabled/pterodactyl.conf


mysql -u root

DROP DATABASE panel;

DROP USER 'pterodactyl'@'127.0.0.1';
fi
if [ $choice == "4" ]
    then
curl -L -o /usr/local/bin/wings https://github.com/pterodactyl/wings/releases/latest/download/wings_linux_amd64


chmod u+x /usr/local/bin/wings


systemctl restart wings
fi
if [ $choice == "5" ]
    then
bash <(curl -sSL https://raw.githubusercontent.com/finnie2006/PteroFreeStuffinstaller/main/resources/DarkNRed/install.sh)
fi
if [ $choice == "6" ]
    then
bash <(curl -sSL https://raw.githubusercontent.com/finnie2006/PteroFreeStuffinstaller/main/resources/DarkNPurple/install.sh)
fi
if [ $choice == "7" ]
    then
bash <(curl -sSL https://raw.githubusercontent.com/finnie2006/PteroFreeStuffinstaller/main/resources/mcTheme/install.sh)
fi
if [ $choice == "8" ]
    then
curl -L https://github.com/pterodactyl/panel/releases/latest/download/panel.tar.gz | tar -xzv











echo "Successfully updated"

fi
if [ $choice == "9" ]
    then
curl -L -o /usr/local/bin/wings https://github.com/pterodactyl/wings/releases/latest/download/wings_linux_amd64

chmod u+x /usr/local/bin/wings

systemctl restart wings
fi
if [ $choice == "10" ]
    then
cd /var/www/pterodactyl

php artisan down

echo "Panel in maintenance mode"

curl -L https://github.com/pterodactyl/panel/releases/latest/download/panel.tar.gz | tar -xzv

chmod -R 755 storage/* bootstrap/cache

composer install --no-dev --optimize-autoloader -yes

php artisan view:clear && php artisan config:clear

php artisan migrate --seed --force

chown -R www-data:www-data /var/www/pterodactyl/*

php artisan queue:restart

php artisan up

clear

echo "Panel out of maintenance mode"
echo "Successfully fixed"
echo "Your panel has been fixed! Script by Lil Panda#3225"
fi
if [ $choice == "11" ]
    then
cd /var/www/pterodactyl

bash <(curl -sL https://github.com/HM4Development/mcpaste-addon/releases/download/v2.0.0/install.sh)
fi
