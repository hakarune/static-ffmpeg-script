#!/bin/sh
#-------------------------------------------------------------
#    ffmpeg Static Build Installer (non-10bit)
#       Installs newest build from http://johnvansickle.com/
#       Info Page Location: http://johnvansickle.com/ffmpeg/
#       Source:  git://source.ffmpeg.org/ffmpeg.git
#       Modified from jonnyboy's original script
#-------------------------------------------------------------

try=`date +"%Y%m%d"`
for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60
	do
		wget http://johnvansickle.com/ffmpeg/builds/ffmpeg-git-$try-64bit-static.tar.bz2
		if [ $? -gt 0 ]; then
			try=`date -d "- $i day" +"%Y%m%d"`;
			clear
					else
						break;

		fi
	done
filename=$(basename "`find . -name *.bz2`")
tar xfv $filename
extension="${filename##*.}"
filename="${filename%.*}"
extension="${filename##*.}"
filename="${filename%.*}"
mv $filename/ffmpeg /usr/bin/
mv $filename/ffprobe /usr/bin/
rm -r $filename
rm $(basename "`find . -name *.bz2`")
