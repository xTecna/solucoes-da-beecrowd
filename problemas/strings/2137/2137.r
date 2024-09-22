input <- file('stdin', 'r')

while (TRUE) {
  tryCatch({
  entrada <- readLines(input, n = 1)

  if (length(entrada) > 0) {
    n <- as.integer(entrada)

    if (n == 0){
      break
    }

    biblioteca <- c()
    for(i in 1:n){
      biblioteca <- c(biblioteca, readLines(input, n = 1))
    }
    biblioteca <- sort(biblioteca)
    for(i in 1:n){
      write(paste(biblioteca[i]), '')
    }
  } else {
    break
  }
  }, error = function(e) {
  break
  })
}
