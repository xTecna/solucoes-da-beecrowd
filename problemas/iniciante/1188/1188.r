input <- file('stdin', 'r')

t <- readLines(input, n=1)

m <- matrix(0, nrow=12, ncol=12)
for(i in 1:12){
  for(j in 1:12){
    m[i, j] <- as.double(readLines(input, n=1))
  }
}

resposta <- 0.0
quantidade <- 0
for(i in 8:12){
  for(j in (14 - i):(i - 1)){
    resposta <- resposta + m[i, j]
    quantidade <- quantidade + 1
  }
}

if(t == 'M'){
  resposta <- resposta / quantidade
}

write(paste(format(round(resposta, 1), nsmall=1)), '')