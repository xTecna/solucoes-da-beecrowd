input <- file('stdin', 'r')

while (TRUE) {
  tryCatch({
    entrada <- readLines(input, n = 1)

    if (length(entrada) > 0) {
      senha <- as.integer(entrada)
      write(paste(senha - 1), '')
    } else {
      break
    }
  }, error = function(e) {
    break
  })
}
