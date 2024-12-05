input <- file('stdin', 'r')

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
for(i in 1:4) {
  if(entrada[i] == 1) {
    write(i, '')
  }
}
