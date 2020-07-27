apt install php7.2 libapache2-mod-php7.2 php7.2-common php7.2-sqlite3 php7.2-mysql php7.2-gmp php7.2-curl php7.2-intl php7.2-mbstring php7.2-xmlrpc php7.2-soap php7.2-ldap php7.2-gd php7.2-bcmath php7.2-xml php7.2-cli php7.2-zip
apt install composer

wget https://get.symfony.com/cli/installer -O - | bash

cd /var/www
composer create-project symfony/website-skeleton $1
