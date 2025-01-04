input <- file('stdin', 'r')

conteiner <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
navio <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])

write(paste((navio[1] %/% conteiner[1]) * (navio[2] %/% conteiner[2]) * (navio[3] %/% conteiner[3])), '')