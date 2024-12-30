input <- file('stdin', 'r')

entrada <- strsplit(readLines(input, n=1), ' ')
x1 <- as.double(entrada[[1]][1])
y1 <- as.double(entrada[[1]][2])

entrada <- strsplit(readLines(input, n=1), ' ')
x2 <- as.double(entrada[[1]][1])
y2 <- as.double(entrada[[1]][2])

write(format(round(sqrt(((x2 - x1) * (x2 - x1)) + ((y2 - y1) * (y2 - y1))), 4), nsmall=4), '')