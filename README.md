# trgn_wordcloud
HW 3A

#About the App
This application will be used to summarize the content of COVID-19 vaccinations in Los Angeles County as well as learn more about the All of Us Research Program in a wordcloud. This program can be accessed at [trgn.usc.edu/~cr96929](http://trgn.usc.edu/~cr96929/).

#Installation & Usage

###How to install the app into a server from scratch

* In order to instaff the app into a server from scratch, you will need to clone the repo of the server to your local machine. Use ```git clone```.
* You will then make a directory for the public html using the bottom 

```
mkdir -p ~/public_html
chmod 755 ~/public_html
cd public_html
```

* Create a test page in index.html using 

``` vi ~/public_html/index.html```

And enter:

```
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>My Unit Test</title>
</head>
<body>
<h1> Unit Test</h1>
<p> Unit Test</p>
</body>
</html>
```
Finally, make it readable:

```chmod 755 ~/public_html``` 

# Dependencies
###A list of programs needed for this work

##First Dependency: Wordcloud
In order for this program to run without requiring the entire path we use a program that converts these files to text. 
####What script are we using?
Use the code below to install a python script [html2text](https://github.com/aaronsw/html2text): https://github.com/aaronsw/html2text. 

```
cd ~/bin
git clone https://github.com/aaronsw/html2text
cd html2text
mv html2text.py ~/bin/
```
####To test this program is working properly, run the following:
```
html2text.py file1.html > my_current.txt
html2text.py file2.html >> my_current.txt 
head my_current.txt
```
####Licensing
The wordcloud library is MIT licenced, but contains DroidSansMono.ttf, a true type font by Google, that is apache licensed. However, any other font can be used by setting the ```font_path``` variable when creating a ```WordCloud``` object.

##Second Dependency: Web Server
###Check your server location in ```~/public_html``` 
Refer to the script in the ```~/index.html```. You willl need to add a reference to the image created from your wordcloud using ```<img src="wordcloud.png"></img>```.

To make your application look nicer, you will add "Wordcloud Summary" to your index script.



# Contact

###Generate a wordcloud from file

Create to have this image automatically put into the directory replacing the old one when run complete the following:

* Create ```generate_wordcloud_from_file.sh``` in the ```~/public_html```directory. 

* Use ```cron``` to set this to run once per day at 8PM PST.
