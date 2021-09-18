#!/usr/bin/bash

while IFS= read -r line; do
	 
     wget -i my_webpages.txt

done < my_webpages.txt

&&

if [[ -f "my_webpages.txt" ]]
then
     wordcloud_cli --text my_current.txt --imagefile wordcloud.png

fi
