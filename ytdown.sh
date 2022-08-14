#!/bin/bash
yut-dlp -F $1 >yt.txt
sed -n '/audio/w au.txt' yt.txt
sed -n '/video/w vi.txt' yt.txt
sed -n '/audio/{/m4a/p}' au.txt  >au1.txt 
sed -n '/video/{/mp4/p}' vi.txt  >vi1.txt
aunumber=$(sed -n '$p' au1.txt | awk '{print $1}' )
vinumber=$(sed -n '$p' vi1.txt | awk '{print $1}' )
yt-dp -f $vinumber+$aunumber $1
