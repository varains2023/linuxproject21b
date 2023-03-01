echo "######################script-varibles#######################"
SOURPATH=/etc/fstab
TARPATH=/tmp
DIR_PATH=/tmp/v1/v2/v3/


#cp $SOURPATH $TARPATH
mkdir -p  $DIR_PATH
cp $SOURPATH $DIR_PATH
