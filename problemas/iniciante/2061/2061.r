input <- file('stdin', 'r')

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
n <- entrada[1]
m <- entrada[2]
for(i in 1:m) {
  acao <- readLines(input, n = 1)

  if(acao == 'fechou'){
    n <- n + 1
  } else {
    n <- n - 1
  }
}

write(paste(n), '')