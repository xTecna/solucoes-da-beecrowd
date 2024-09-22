input <- file('stdin', 'r')

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
write(paste(max(entrada[1], entrada[2])), '')