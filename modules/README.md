# Set up

1. Visit https://healthai-course-2025.lab.hdc.ntnu.no/ in Google Chrome. Use your username and password to logon.  
2. Select Terminal on the second row from the bottom.  
3. When Terminal opens, you are in your workbench folder. If you need to get back to your workbench folder at any time, use the next command to change directory. Replace `$USER` with your username.  

```
cd /mnt/work/workbench/$USER/
```  

4. Clone the github repository by copying the following command into the terminal and press enter.  

```
git clone https://github.com/bnwolford/HealthAIinR.git
```

5. Press the blue plus sign on the top left. A new launcher appears. Now select RStudio, the blue circle with a white R.
6. In the bottom left panel you can navigate the file system like in a regular computer. Select workbench, then HealthAIinR, then modules. Click on Module0.Rmd. This is an R Markdown document. It will open in the top left of the screen.

7. If you set this up a while ago, pull the repository to see the updated code. In Terminal, execute the following commands:
```
cd /mnt/work/workbench/$USER/HealthAIinR
git pull
```

8. To save some time later, let's install some packages. 

```
conda activate r-base
conda install r-ggplot2 r-tidymodels r-dlpyr r-tidyr r-readr r-survival r-survminer r-data.table r-ggsurvfit
```

# Course Material :warning: Still under maintenance  
[Module 1](https://github.com/bnwolford/HealthAIinR/blob/main/modules/Module1.Rmd)  
[Module 2](https://github.com/bnwolford/HealthAIinR/blob/main/modules/Module2.Rmd)  
[Module 3](https://github.com/bnwolford/HealthAIinR/blob/main/modules/Module3.Rmd)  
[Module 4](https://github.com/bnwolford/HealthAIinR/blob/main/modules/Module4.Rmd)  
[Module 5](https://github.com/bnwolford/HealthAIinR/blob/main/modules/Module5.Rmd)  

If you cloned the directory before today, go back to your Terminal and execute these commands, remembering to replace $USER. This will bring any new updates from github to your folder on HUNT Cloud.  
```
cd /mnt/work/workbench/$USER/HealthAIinR
git pull
```  
