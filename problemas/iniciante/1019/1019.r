input <- file('stdin', 'r')

segundos <- as.integer(readLines(input, n=1))

horas <- segundos %/% 3600
segundos <- segundos %% 3600
minutos <- segundos %/% 60
segundos <- segundos %% 60

write(paste(horas, ':', minutos, ':', segundos, sep=''), '')
