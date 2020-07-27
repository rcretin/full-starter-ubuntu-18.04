wget -O- http://www.webmin.com/jcameron-key.asc | sudo apt-key add -
apt_sources_liste="/etc/apt/sources.list"
echo "deb http://download.webmin.com/download/repository sarge contrib" >> ${apt_sources_liste}

apt update
apt install -y apache2 php webmin
