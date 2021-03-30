# verify the current working directory

setwd("/home/runner/loveRLearning/input")
getwd()

in_path = "/home/runner/loveRLearning/input/";
out_path = "/home/runner/loveRLearning/output/";

# get all csv files from input directory
files <- list.files(in_path);

sapply(files, function(srcFile) {
  x <- read.csv(srcFile)

# modify the column names as your wish
  colnames(x) <- c("*Sno*", "*Name*", 
"*Age*", "*Gender*", "*Height*", "*Weight*")

  # form the output directopry
  target = paste0(out_path, srcFile)
  print(target)
  write.csv(x,file=target, row.names=F, quote=F)

});

