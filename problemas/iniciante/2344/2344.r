input <- file('stdin', 'r')

n <- as.integer(readLines(input, n = 1))
if (n > 85) {
  write(paste('A'), '')
} else if (n > 60) {
  write(paste('B'), '')
} else if (n > 35) {
  write(paste('C'), '')
} else if (n > 0) {
  write(paste('D'), '')
} else {
  write(paste('E'), '')
}