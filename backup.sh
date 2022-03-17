a() {
    mkdir -p ~/.archive
    DATE=$(date '+%C%y-%m-%d-%k_%H%M')
    cp $1 ~/.archive/${DATE}.$(basename $1)
    #tar czvf ~/.archive/${DATE}.$(basename $1).tar $1
    ls -l ~/.archive/
}

