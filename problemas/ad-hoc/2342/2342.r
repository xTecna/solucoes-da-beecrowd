input <- file('stdin', 'r')

n <- as.integer(readLines(input, n = 1))

entrada <- strsplit(readLines(input, n = 1), ' ')[[1]]
p <- as.integer(entrada[1])
c <- entrada[2]
q <- as.integer(entrada[3])

if (c == '+') {
  if (p + q <= n) {
    write(paste('OK'), '')
  } else {
    write(paste('OVERFLOW'), '')
  }
} else {
  if (p * q <= n) {
    write(paste('OK'), '')
  } else {
    write(paste('OVERFLOW'), '')
  }
}