r <- function(a, b) {
  return((9 * a * a) + (b * b))
}

b <- function(a, b) {
  return(2 * (a * a) + (25 * b * b))
}

c <- function(a, b) {
  return(-100 * a + (b * b * b))
}

input <- file('stdin', 'r')

n <- as.integer(readLines(input, n=1), ' ')
for(i in 1:n) {
  entrada <- strsplit(readLines(input, n=1), ' ')
  x <- as.integer(entrada[[1]][1])
  y <- as.integer(entrada[[1]][2])

  rafael <- r(x, y)
  beto <- b(x, y)
  carlos <- c(x, y)

  if (rafael > beto && rafael > carlos) {
    write(paste('Rafael ganhou'), '')
  } else if (beto > rafael && beto > carlos) {
    write(paste('Beto ganhou'), '')
  } else {
    write(paste('Carlos ganhou'), '')
  }
}