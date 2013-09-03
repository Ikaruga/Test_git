!/bin/sh 
n="\\033[0;39m" 
j="\\033[1;33m" 
c="\\033[1;36m" 
v="\\033[1;32m"
echo ------------------------
echo Sauvegarde des donn\ées
mkdir xxx
mv StarMade-dedicated-server-linux.sh xxx/StarMade-dedicated-server-linux.sh
mv protected.txt xxx/protected.txt
mv blacklist.txt xxx/blacklist.txt
mv admins.txt xxx/admins.txt
mv server.cfg xxx/server.cfg
mv server-message.txt xxx/server-message.txt
mv whitelist.txt xxx/whitelist.txt
echo ------------------------

echo -e "$JAUNE"
wget -p files.star-made.org/build/
cd files.star-made.org/build/
fichier=`sed -e 's/<[^>]*>//g' index.html | grep [s] | cut -c1-35 | awk 'END {print}'` 
version=files.star-made.org/build/$fichier
cd ../..
echo -e "$j"
wget $version
echo -e "$v"
unzip -o $fichier

rm -R -f files.star-made.org/
echo
echo
echo -e "$c" Serveur $fichier initialis\é et pr\êt \à l\'emploi.
echo
echo -e "$n"
echo ------------------------
echo Restauration des donn\ées
ls xxx -al
mv xxx/StarMade-dedicated-server-linux.sh StarMade-dedicated-server-linux.sh
mv xxx/protected.txt protected.txt 
mv xxx/blacklist.txt blacklist.txt
mv xxx/admins.txt admins.txt
mv xxx/server.cfg server.cfg
mv xxx/server-message.txt server-message.txt
mv xxx/whitelist.txt whitelist.txt
rm -R -f xxx
rm -R -f files.star-made.org
rm -R -f *.zip.*

echo ------------------------
