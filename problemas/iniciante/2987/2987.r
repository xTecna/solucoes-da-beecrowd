input <- file('stdin', 'r')

l <- readLines(input, n = 1)
write(paste(utf8ToInt(l[1]) - 64), '')