input <- file('stdin', 'r')

while (TRUE) {
  k <- as.integer(readLines(input, n = 1))

  if (k == 0) {
    break
  }

  entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
  n <- entrada[1]
  m <- entrada[2]

  for(i in 1:k) {
    entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
    x <- entrada[1]
    y <- entrada[2]

    x <- x - n
    y <- y - m

    if (x > 0 && y > 0) {
      write(paste('NE'), '')
    } else if (x > 0 && y < 0) {
      write(paste('SE'), '')
    } else if (x < 0 && y > 0) {
      write(paste('NO'), '')
    } else if (x < 0 && y < 0) {
      write(paste('SO'), '')
    } else {
      write(paste('divisa'), '')
    }
  }
}