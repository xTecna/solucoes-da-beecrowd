input <- file('stdin', 'r')

c <- as.integer(readLines(input, n = 1))
for(i in 1:c) {
  n <- as.integer(readLines(input, n = 1))
  if(n <= 8000) {
    write(paste('Inseto!'), '')
  }else{
    write(paste('Mais de 8000!'), '')
  }
}
