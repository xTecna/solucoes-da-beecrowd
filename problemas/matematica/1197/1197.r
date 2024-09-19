input <- file('stdin', 'r')

while (TRUE) {
  tryCatch({
    entrada <- readLines(input, n = 1)

    if (length(entrada) > 0) {
      numeros <- strsplit(entrada, ' ')[[1]]

      if (length(numeros) < 2) {
        break
      }

      v <- as.integer(numeros[1])
      t <- as.integer(numeros[2])

      write(paste(v * 2 * t), '')
    } else {
      break
    }
  }, error = function(e) {
    break
  })
}
