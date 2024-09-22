input <- file('stdin', 'r')

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
c <- entrada[1]
n <- entrada[2]

write(paste(c %% n), '')