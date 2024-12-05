input <- file('stdin', 'r')

d <- as.integer(readLines(input, n = 1))

if (d <= 800) {
  write(paste('1'), '')
} else if (d <= 1400) {
  write(paste('2'), '')
} else {
  write(paste('3'), '')
}