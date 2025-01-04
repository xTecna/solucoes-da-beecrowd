input <- file('stdin', 'r')

campeonato <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
campeonato <- sort(campeonato)

write(paste(campeonato[2]), '')