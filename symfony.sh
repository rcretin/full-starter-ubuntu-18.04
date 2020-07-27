apt install apache2 php curl

curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

cd /var/www/
composer create-project symfony/skeleton symfony5

chown -R www-data:www-data /var/www/symfony5/
chmod -R 755 /var/www/symfony5/

synfony_conf_file="/etc/apache2/sites-available/symfony.conf"

echo "
<VirtualHost *:80>
     ServerAdmin admin@example.com
     DocumentRoot /var/www/symfony5/public
     ServerName example.com
     ServerAlias www.example.com

     <Directory /var/www/symfony5/public/>
          Options FollowSymlinks
          AllowOverride All
          Require all granted
     </Directory>

     ErrorLog ${APACHE_LOG_DIR}/error.log
     CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>" >> ${synfony_conf_file}

echo "emplacement du fichier de conf de synfony pour apache : ${synfony_conf_file}";

a2ensite symfony.conf
systemctl restart apache2.service
