input <- file('stdin', 'r')

k <- as.integer(readLines(input, n = 1))

if (k == 1) {
  write(paste('Top 1'), '')
} else if (k <= 3) {
  write(paste('Top 3'), '')
} else if (k <= 5) {
  write(paste('Top 5'), '')
} else if (k <= 10) {
  write(paste('Top 10'), '')
} else if (k <= 25) {
  write(paste('Top 25'), '')
} else if (k <= 50) {
  write(paste('Top 50'), '')
} else {
  write(paste('Top 100'), '')
}