# Lab3CISC3140
Repo Contents
-------------

-Makefile 

    The makefile will call the awk command on the designated CSV file
 
-command.awk

    This awk file will determine how and what data will be formatted after it is called by the makefile
  
-CSV File

    Contains the data of NBA All Star games from 1951 to 2021 including player names, teams, year and MVP winners
  
 -README.MD
 
    Lists contents of repo and instructions on how to run the files
  
 DESCRIPTION:
    The data will be formatted to show the winners of the NBA All Star MVP from 1951 to 2021. The data will be separated by year and will include the MVP's name, 
    team and how many MVPs they have won so far. The entire data file can be found at https://www.kaggle.com/darinhawley/nba-all-star-games-19512021. The awk           file will format the data after it is called by the makefile.
    
# Instructions
-Recommended that you do on MacOS/Linux system as a different system may not run properly with the given files
- From the repository, click on the 'CODE' button and choose 'Download ZIP'
- Extract the files to a directory where you want them
- In the terminal, using cd command, change directory until you get to the one where you have the files
- If you have multiple makefiles in the same directory type 'make reporting' and the report should generate. If there are no more makefiles in the directory,
  run 'make' and it should generate report
