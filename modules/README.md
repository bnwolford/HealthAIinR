# Set up

1. Visit https://healthai-course-2025.lab.hdc.ntnu.no/ in Google Chrome. Use your username and password to logon.
   
2. Select Terminal on the second row from the bottom.
   
3. When Terminal opens, you are in your workbench folder. If you need to get back to your workbench folder at any time, use the next command to change directory. Replace `$USER` with your username.  

```
cd /mnt/work/workbench/$USER/
```  

4. Download the material from the github repository
 
Option 1: Clone the github repository by copying the following command into the terminal and press enter.  

```
git clone https://github.com/bnwolford/HealthAIinR.git
```
Option 2: Select the green Code<> button on the github repository homescreen. Select, Download zip file. 

5. Press the blue plus sign on the top left. A new launcher appears. Now select RStudio, the blue circle with a white R.
   
6. In the bottom left panel you can navigate the file system like in a regular computer. Select workbench, then HealthAIinR, then modules. Click on Module0.Rmd. This is an R Markdown document. It will open in the top left of the screen.

7. If you set this up a while ago, pull the repository to see the updated code. In Terminal, execute the following commands:
```
cd /mnt/work/workbench/$USER/HealthAIinR
git pull
```

8. To save some time later, let's install some packages. 

Day 1:
```
conda activate r-base
conda install r-ggplot2 r-tidymodels r-dplyr r-tidyr r-readr r-survival r-survminer r-data.table r-ggsurvfit r-xgboost r-skimr r-janitor
```

in R console:
```R
install.packages(c("ggplot2", "tidymodels", "dplyr", "tidyr", "readr"))
```

Day 2:
```
conda activate r-base
conda install r-workflows r-tune r-mlbench r-ranger r-randomForest
```

in R:
```
install.packages(c("workflows","tune","mlbench","ranger","randomForest"))

```

# For local access (on Windows computers) (one method)
1. Install GitHub Desktop (if not already installed).
2. On the course GitHub page, click on the green "<> Code" button. Copy the URL.
3. Open GitHub Desktop. In the top menu, click on File > Clone repository > URL. Paste in the URL you copied from the GitHub online. Check the local path and make sure it's where you want to save it. If you're satisfied, click "Clone".
4. The repository should automatically load it and come up with an option to "Open in editor (RStudio)". If RStudio is already open, you'll have to close it and then click "Open in editor (RStudio)".
5. All the materials should be available now through RStudio.

# Course Material  

We recommend that you use the working versions of the files that do not have the commands typed for you. This way you can actually write the commands and not just execute them. This makes for more effective learning.

[Module 1 working version](https://github.com/bnwolford/HealthAIinR/blob/main/modules/Module1.Rmd)  
[Module 2 working version](https://github.com/bnwolford/HealthAIinR/blob/main/modules/Module2.Rmd)  
[Module 3 working version](https://github.com/bnwolford/HealthAIinR/blob/main/modules/Module3.Rmd)  
[Module 4 working version](https://github.com/bnwolford/HealthAIinR/blob/main/modules/Module4.Rmd)  
[Module 5 working version](https://github.com/bnwolford/HealthAIinR/blob/main/modules/Module5.Rmd)  

If you get lost or need to reference something, you can use the files below.

[Module 1](https://github.com/bnwolford/HealthAIinR/blob/main/modules/Module1_working.Rmd)  
[Module 2](https://github.com/bnwolford/HealthAIinR/blob/main/modules/Module2_working.Rmd)  
[Module 3](https://github.com/bnwolford/HealthAIinR/blob/main/modules/Module3_working.Rmd)  
[Module 4](https://github.com/bnwolford/HealthAIinR/blob/main/modules/Module4_working.Rmd)  
[Module 5](https://github.com/bnwolford/HealthAIinR/blob/main/modules/Module5_working.Rmd)  

If you cloned the directory before today, go back to your Terminal and execute these commands, remembering to replace $USER. This will bring any new updates from github to your folder on HUNT Cloud.  
```
cd /mnt/work/workbench/$USER/HealthAIinR
git pull
```  
