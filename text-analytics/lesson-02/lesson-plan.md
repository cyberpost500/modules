# Text Analytics - Lesson 2
## Lesson Outline
  - The INTs (HUMINT, ELINT, GEOINT, OSINT, etc.)  
  - Text Analytics  - the process of analyzing unstructured text, extracting relevant information, and transforming it into useful intelligence.  
  - Linux: wget, mv, alias, rm, ~, echo, $HOME, pwd, PS1

## Practice
````
pwd
echo $HOME
cd ~
pwd
cd $HOME
pwd
ls
ls --all --author -1 --group
alias x='ls --all -author -1 --group'
x
echo $HOME > myHome.txt
x myHome.txt
cat myHome.txt
export PS1='$ '
unalias x
gedit &
````

## [Stanford  Natural Language Processing Tools](http://nlp.stanford.edu/software/)  
 1. Get some text to analyze:
   1. Open up a text editor and have it run in the background  
   2. Go to a news website (e.g., cnn.com, bbc.com, theonion.com), browse to a news story, copy the text into your text editor, and save the file as ~/nlp/data/news1.text 
   3.  Use wget to get a copy of a different news web page  
      ````
      wget http://msnbc.com  
      mv index.html ~/nlp/data/news2.txt  
      ````
 2. xxx
 3. xx
