static-ffmpeg-script
====================

!!Must be Run as root [sudo]!!

This finds and installs the most recent (within past 60 days) static build of ffmpeg built by johnvansickle [http://johnvansickle.com/ffmpeg/]

If there is not a recent static build within past 60 days, script will fail (working on solution).

Original script by jonnyboy on nzedb.com forums [http://nzedb.com/index.php?topic=683.0], modified to work on OMV. 

After this downloads and extracts tar file it moves required files to correct location for global use (/usr/bin), then it removes leftover files.

How-To:
* Download install-ffmpeg script
* run `chmod +x install-ffmpeg`
* run script `sudo sh install-ffmpeg`
* Done

Please feel free to streamline and simplify this code.