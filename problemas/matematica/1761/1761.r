input <- file('stdin', 'r')

pi <- 3.141592654
while (TRUE) {
  tryCatch({
    linha <- readLines(input, n = 1)

    if (length(linha) > 0) {
      entrada <- as.double(strsplit(linha, ' ')[[1]])
      a <- entrada[1]
      b <- entrada[2]
      c <- entrada[3]

      write(paste(format(round(5.0 * (tan(a * pi / 180.0) * b + c), 2), nsmall=2)), '')
    } else {
      break
    }
  }, error = function(e) {
    break
  })
}
