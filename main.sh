#!/bin/bash
#Extra-Credit Assignment


output="output"

#make a directory called output
mkdir output

#ask for input and convert it to text file
read -p "Please write something. Anything. I need input. "

#copy the text into a text file and move it to the  output directory
echo "$REPLY" > output.txt
mv output.txt $output

#run pwd and ls commands and save contents as separate files
pwd
ls
pwd="pwd.txt"
pwd > $pwd
ls="ls.txt"
ls > $ls
mv pwd.txt ls.txt $output

#read the contents of your created text file to read.txt and copy.txt
cd $output
cp output.txt read.txt
cp output.txt copy.txt

#invoke an alias of the date
alias todaysdate=date
todaysdate > date.txt

#count all the words of file to textcount.txt
wc -w output.txt > textcount.txt

#first 5 lines of ps to process.txt
ps | head -n 5 > process.txt

#first 5 lines of ifconfig to netstat.txt
ifconfig | head -n 5 > netstat.txt

#first 5 lines of mount to mount.txt
mount | head -n 5 > mount.txt

#create a file called permissions.txt
touch permissions.txt

#give rwx permissions to all users 
chmod 777 permissions.txt

#create a shell variable called TESTENV1 and set to "test"
TESTENV1=test

#grep command for all words in text file with 3 letters and save to regex.txt
grep '\b{3,}\b' output.txt  > regex.txt

#navigate up a level
cd .. 

