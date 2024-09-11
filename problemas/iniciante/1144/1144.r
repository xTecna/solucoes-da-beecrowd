input <- file('stdin', 'r')

n <- as.integer(readLines(input, n=1))

for(i in 1:n){
  write(paste(i, i * i, i * i * i), '')
  write(paste(i, i * i + 1, i * i * i + 1), '')
}