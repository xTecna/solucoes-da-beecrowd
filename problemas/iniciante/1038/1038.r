input <- file('stdin', 'r')

precos <- c(4.00, 4.50, 5.00, 2.00, 1.50)

entrada <- strsplit(readLines(input, n=1), ' ')
codigo <- as.integer(entrada[[1]][1])
quantidade <- as.integer(entrada[[1]][2])

write(paste("Total: R$ ", format(round(quantidade * precos[codigo], 2), nsmall=2), sep=''), '')