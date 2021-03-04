TARGETPATH=$1
EXT=$2

# findは""で対象を区切っておかないとワイルドカードが先に評価される
FULLPATH=`find $TARGETPATH -name "*.$EXT"`
echo $FULLPATH
echo `echo $FULLPATH | awk -F "/" '{ print $NF }'`
