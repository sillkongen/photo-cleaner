# photo-cleaner
Migrating photo library from multiple versions of iPhoto scattered all over.

After years of postponing and just dropping files here and there on multiple computers. The plan is to do a proper clean up and that requires some thought on the following:

What files are we expecting in terms of filetypes / extensions

NEF /nef
dng /DNG
arw /ARW
jpg / JPG
jpeg / JPEG
mp4 / MP4
avi / AVI
3gp / 3GP
mov / MOV

Over time certain types of files have piled up, like Apple's face recognition and mountain of thumbnail files. To speed up the process these files are deleted as a pre run process.


The cleaning process consists of running the following scripts and then use #EXIFTOOL to do the heavy lifting of renaming files and moving them in to the right location.

Navigate to your folder and execute the script from your top level folder by running sh /YOURPATH/photo-cleaner/1_clean.sh

#Remember to do this on the copy of your files. Always work on a backup never the original files!
