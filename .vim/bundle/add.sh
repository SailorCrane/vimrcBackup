fileList=$(cat list  | awk   '{print $2}')

curDir=$(pwd)
for i in $fileList
do
    #echo $i
    cd $i
    git add .
    git cm 'add doc/tags'
    cd $curDir
done
