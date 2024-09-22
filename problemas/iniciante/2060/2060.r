input <- file('stdin', 'r')

n <- as.integer(readLines(input, n = 1))
entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])

dois <- 0
tres <- 0
quatro <- 0
cinco <- 0
for(i in 1:n) {
  if(entrada[i] %% 2 == 0){
    dois <- dois + 1
  }
  if(entrada[i] %% 3 == 0){
    tres <- tres + 1
  }
  if(entrada[i] %% 4 == 0){
    quatro <- quatro + 1
  }
  if(entrada[i] %% 5 == 0){
    cinco <- cinco + 1
  }
}

write(paste(dois, 'Multiplo(s) de 2'), '')
write(paste(tres, 'Multiplo(s) de 3'), '')
write(paste(quatro, 'Multiplo(s) de 4'), '')
write(paste(cinco, 'Multiplo(s) de 5'), '')