TARGETPATH=$1
EXT=$2

FULLPATH=echo `find $TARGETPATH -name *.$EXT`
echo `echo $FULLPATH | awk -F "/" '{ print $NF }'`
