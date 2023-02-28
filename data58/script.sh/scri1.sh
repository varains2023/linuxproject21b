echo "##################### creatingdirectory ################# "
touch /var/log/gipout1
echo "################ displayhighsizefile ######################"
find /var/log/	-type f -exec du -sh {} +|sort -rh |head -5 > /var/log/gipout1
echo "###############copy that other location#####################"
cp /var/log/gipout1 /tmp/
echo "################go to that location#########################"
cd /tmp/
echo "###############now compress that files######################"
gzip gipout1
echo "#####################the end#############################"
