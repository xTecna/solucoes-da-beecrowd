input <- file('stdin', 'r')

leitura <- function(resultados){
  entrada <- as.integer(strsplit(readLines(input, n=1), ' ')[[1]])
  x <- entrada[1]
  y <- entrada[2]

  if(x > y){
    resultados[1] <- resultados[1] + 1
  }else if(x < y){
    resultados[2] <- resultados[2] + 1
  }else{
    resultados[3] <- resultados[3] + 1
  }

  return(resultados)
}

grenais <- 1
resultados <- leitura(array(0, dim=c(3)))
while(TRUE){
  write(paste('Novo grenal (1-sim 2-nao)'), '')
  codigo <- as.integer(readLines(input, n=1))
  if(codigo == 1){
    grenais <- grenais + 1
    resultados <- leitura(resultados)
  }else if(codigo == 2){
    break
  }
}

write(paste(grenais, 'grenais'), '')
write(paste('Inter:', resultados[1], sep=''), '')
write(paste('Gremio:', resultados[2], sep=''), '')
write(paste('Empates:', resultados[3], sep=''), '')

if(resultados[1] > resultados[2] && resultados[1] > resultados[3]){
  write(paste('Inter venceu mais'), '')
}else if(resultados[2] > resultados[1] && resultados[2] > resultados[3]){
  write(paste('Grenal venceu mais'), '')
}else{
  write(paste('Nao houve vencedor'), '')
}