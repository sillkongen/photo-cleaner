#!/bin/sh

# exiftool '-FileName<DateTimeOriginal' -d "%Y-%m-%d %H.%M.%S%%-c.%%e" . -r

exiftool -ext RAF -ext raf -ext cr2 -ext CR2 -ext NEF -ext nef -ext dng -ext DNG -ext arw -ext ARW -ext jpg -ext mov -ext jpeg -ext mpg -ext avi -ext mp4 -ext JPG -ext MOV -ext JPEG -ext MPG -ext AVI -ext MP4 -ext 3gp -ext 3GP -ext png -ext PNG -d '[%Y-%m-%d][%A] [%H.%M.%S].%-c.%%e' '-Filename<MediaCreateDate' '-Filename<DateTimeOriginal' . -r
