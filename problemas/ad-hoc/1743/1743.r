input <- file('stdin', 'r')

x <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
y <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])

compativel <- TRUE
for(i in 1:5) {
  if(x[i] == y[i]) {
    compativel <- FALSE
    break
  }
}

if (compativel) {
  write(paste('Y'), '')
} else {
  write(paste('N'), '')
}