input <- file('stdin', 'r')

while (TRUE) {
  entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
  x <- entrada[1]
  m <- entrada[2]

  if(x == 0 && m == 0){
    break
  }

  write(paste(x * m), '')
}