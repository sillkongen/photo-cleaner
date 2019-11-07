#!/bin/sh
now=$(date +"%T")

now=$(date +"%T")
echo "Clean up Database - step 1/14 : $now \n"
find ./ -depth -name "Database" -exec rm -rf {} \;

now=$(date +"%T")
echo "Clean up Data - step 2/14 : $now \n"
find ./ -depth -name "Data" -exec rm -rf {} \;

now=$(date +"%T")
echo "Clean up Data.noindex - step 3/14 : $now \n"
find ./ -depth -name "Data.noindex" -exec rm -rf {} \;

now=$(date +"%T")
echo "Clean up Previews - step 4/14 : $now \n"
find ./ -depth -name "Previews" -exec rm -rf {} \;

now=$(date +"%T")
echo "Clean up Thumbs - step 5/14 : $now \n"
find ./ -depth -name "Thumbs" -exec rm -Rf {} \;

now=$(date +"%T")
echo "Clean up the infamous .DS_Store - step 6/14 : $now \n"
find ./ -depth -name ".DS_Store" -exec rm {} \;

now=$(date +"%T")
echo "Clean up Thumbnails - step 7/14 : $now \n"
find ./ -depth -name "Thumbnails" -exec rm -Rf {} \;

now=$(date +"%T")
echo "Clean up dot underscore files - step 8/14 : $now \n"
find . -name '._*' -exec rm -v {} \;


# Remove !sync files
now=$(date +"%T")
echo "Clean up !sync files - step 9/14 : $now \n"
find ./ -depth -name "*.!sync" -exec rm -Rf {} \;

# Picasa and Thumbs.ini Windows
now=$(date +"%T")
echo "Clean up Thumbs.db - step 10/14 : $now \n"
find ./ -depth -name "Thumbs.db" -exec rm -Rf {} \;

now=$(date +"%T")
echo "Clean up Picasa.ini - step 11/14 : $now \n"
find ./ -depth -name "Picasa.ini" -exec rm -Rf {} \;

now=$(date +"%T")
echo "Clean up .Appledouble - step 12/14 : $now \n"
find ./ -depth -name ".Appledouble" -exec rm -rf {} \;

now=$(date +"%T")
echo "Clean up masterThumb.jpg - step 13/14 : $now \n"
find ./ -depth -name "masterThumb.jpg" -exec rm -Rf {} \;

now=$(date +"%T")
echo "Clean up - Lightroom  Step 13.1/14 : $now \n"
find ./ -depth -name "*.lrdata" -exec rm -rf {} \;

now=$(date +"%T")
echo "Clean up resources - 13.2/14 : $now \n" 
find ./ -depth -name "resources" -exec rm -rf {} \;

now=$(date +"%T")
echo "Cleaning up empty folders -  step 14/14 : $now \n"
find . -type d -empty -delete
