input <- file('stdin', 'r')

t <- as.integer(readLines(input, n = 1))
entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
corretos <- 0
for(i in 1:5) {
  if(entrada[i] == t){
    corretos <- corretos + 1
  }
}
write(paste(corretos), '')