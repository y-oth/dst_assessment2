#-----------ADD YOUR PACKAGES AS YOU GO PLEASE -----------------

pkgs=c("ggplot2", "pROC","dplyr")

for(p in pkgs){
  if (!require(p,character.only=TRUE)) install.packages(p)
}
