input <- file('stdin', 'r')

while(TRUE) {
  n <- as.integer(readLines(input, n = 1))

  if(n == 0) {
    break
  }else if(n == 1){
    cat("1\n")
  }else{
    limite <- nchar(as.character(2 ** (2 * n - 2)))
    formato <- sprintf("%%%dd", limite)
    formato2 <- sprintf("%%%dd", limite + 1)
    for(i in 0:(n-1)) {
      cat(sprintf(formato, 2 ** i))
      for(j in 1:(n-1)) {
        cat(sprintf(formato2, 2 ** (i + j)))
      }
      cat('\n')
    }
  }
  cat('\n')
}
