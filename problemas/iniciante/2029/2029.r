input <- file('stdin', 'r')

pi <- 3.14
while (TRUE) {
  tryCatch({
    entrada <- readLines(input, n = 1)

    if (length(entrada) > 0) {
      v <- as.double(entrada)
      d <- as.double(readLines(input, n = 1)) / 2.0

      area <- pi * d * d
      altura <- v / area

      write(paste('ALTURA =', format(round(altura, 2), nsmall=2)), '')
      write(paste('AREA =', format(round(area, 2), nsmall=2)), '')
    } else {
      break
    }
  }, error = function(e) {
    break
  })
}
