input <- file('stdin', 'r')

duasCasas <- function(numero) {
  if (numero < 10) {
    return(paste('0', toString(numero), sep=''))
  } else {
    return(toString(numero))
  }
}

n <- as.integer(readLines(input, n = 1))
for(i in 1:n) {
  entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
  h <- entrada[1]
  m <- entrada[2]
  o <- entrada[3]

  if(o == 1) {
    write(paste(duasCasas(h), ':', duasCasas(m), ' - A porta abriu!', sep=''), '')
  } else {
    write(paste(duasCasas(h), ':', duasCasas(m), ' - A porta fechou!', sep=''), '')
  }
}
