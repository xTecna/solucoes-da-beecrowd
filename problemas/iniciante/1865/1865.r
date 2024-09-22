input <- file('stdin', 'r')

n <- as.integer(readLines(input, n = 1))
for (i in 1:n) {
  entrada <- strsplit(readLines(input, n = 1), ' ')[[1]]

  if(entrada[1] == "Thor"){
    write(paste('Y'), '')
  } else {
    write(paste('N'), '')
  }
}