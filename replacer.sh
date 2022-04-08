for f in $(find $(pwd -P) -name 'thing.yml')
do
        DIR=$(dirname $f)
        cd $DIR
        git checkout master
        git branch -D my-branch
        git checkout -b my-branch
        sed -i 's+\(.*\)the_thing}+\1}the_thing+g' $f
        git add -A
        git commit -m "did the thing"
        git push origin HEAD
        cd -
        
done
