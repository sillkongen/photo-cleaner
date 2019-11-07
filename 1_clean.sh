ops=("Database" "Data" "Data.noindex" "Previews" "Thumbs" ".DS_Store" "Thumbnails" "._*" "*.!sync" "Thumbs.db" "Picasa.ini" "masterThumb.jpg" "*.lrdata" "resources")
length=${#ops[@]}
for i in "${!ops[@]}"
do
  now=$(date +"%T")
  file=${ops[$i]}
  pos=$[$i + 1]
  echo "Clean up $file step $pos/$length"
  find ./ -depth -name \"$file\" -exec rm -fr {} \;
done
echo "Cleaning up empty folders"
find . -type d -empty -delete
