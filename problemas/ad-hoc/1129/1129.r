input <- file('stdin', 'r')

while (TRUE) {
  n <- as.integer(readLines(input, n = 1))

  if (n == 0) {
    break
  }

  for(i in 1:n) {
    opcao <- 0
    corretos <- 0

    cores <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
    for(k in 1:5) {
      if(cores[k] <= 127) {
        opcao <- k
        corretos <- corretos + 1
      }
    }

    if(corretos == 1) {
      write(paste(intToUtf8(utf8ToInt('A') + opcao - 1)), '')
    } else {
      write(paste('*'), '')
    }
  }
}