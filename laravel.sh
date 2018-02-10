{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset0 Calibri;}}
{\colortbl ;\red0\green0\blue255;}
{\*\generator Msftedit 5.41.21.2510;}\viewkind4\uc1\pard\sa200\sl276\slmult1\lang12\f0\fs22 # Clear Existing Workspace\par
rm php.ini hello-world.php\par
\par
# Install PHP 7.1\par
# The following PHP script was coded by {\field{\*\fldinst{HYPERLINK "https://github.com/svpernova09"}}{\fldrslt{\ul\cf1 https://github.com/svpernova09}}}\f0\fs22  \par
sudo add-apt-repository ppa:ondrej/php -y\par
sudo apt-get update -y\par
\par
sudo apt-get install php7.1-curl php7.1-cli php7.1-dev php7.1-gd php7.1-intl php7.1-mcrypt php7.1-json php7.1-mysql php7.1-opcache php7.1-bcmath php7.1-mbstring php7.1-soap php7.1-xml php7.1-zip -y\par
\par
sudo mv /etc/apache2/envvars /etc/apache2/envvars.bak\par
sudo apt-get remove libapache2-mod-php5 -y\par
sudo apt-get install libapache2-mod-php7.1 -y\par
sudo cp /etc/apache2/envvars.bak /etc/apache2/envvars\par
\par
sudo a2dismod php5\par
sudo a2enmod php7.1\par
\par
# Install Laravel\par
sudo composer self-update\par
sudo composer update\par
sudo sed -i 's/DocumentRoot\\ \\/home\\/ubuntu\\/workspace/DocumentRoot\\ \\/home\\/ubuntu\\/workspace\\/public/g' /etc/apache2/sites-enabled/001-cloud9.conf\par
\par
sudo service apache2 restart\par
\par
\par
# setup npm and nodejs for web mixing\par
curl -sL {\field{\*\fldinst{HYPERLINK "https://deb.nodesource.com/setup_6.x"}}{\fldrslt{\ul\cf1 https://deb.nodesource.com/setup_6.x}}}\f0\fs22  | sudo -E bash -\par
sudo apt-get install -y nodejs\par
sudo npm install\par
sudo npm rebuild node-sass\par
\par
#Install MySQL 5.7y\par
wget {\field{\*\fldinst{HYPERLINK "https://dev.mysql.com/get/mysql-apt-config_0.8.7-1_all.deb"}}{\fldrslt{\ul\cf1 https://dev.mysql.com/get/mysql-apt-config_0.8.7-1_all.deb}}}\f0\fs22\par
}
 