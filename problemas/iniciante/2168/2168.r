segura <- function(m, i, j) {
  return(m[i, j] + m[i + 1, j] + m[i, j + 1] + m[i + 1, j + 1] >= 2)
}

input <- file('stdin', 'r')

n <- as.integer(readLines(input, n=1))

m <- matrix(0, nrow=n+1, ncol=n+1)
for(i in 1:(n+1)){
  entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
  for(j in 1:(n+1)){
    m[i, j] <- entrada[j]
  }
}

for(i in 1:n){
  resposta <- ''
  for(j in 1:n){
    if(segura(m, i, j)){
      resposta <- paste(resposta, 'S', sep='')
    }else{
      resposta <- paste(resposta, 'U', sep='')
    }
  }
  write(paste(resposta), '')
}
