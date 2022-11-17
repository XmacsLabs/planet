for f in `find . | grep tm$`
do
  mogan --convert $f $f --quit
done
