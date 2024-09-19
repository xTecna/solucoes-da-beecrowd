input <- file('stdin', 'r')

while (TRUE) {
  entrada <- as.integer(strsplit(readLines(input, n=1), ' ')[[1]])
  l <- entrada[1]
  r <- entrada[2]

  if (l == 0 && r == 0){
    break
  }

  write(paste(l + r), '')
}