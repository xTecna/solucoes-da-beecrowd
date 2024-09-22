input <- file('stdin', 'r')

n <- as.integer(readLines(input, n = 1))
resposta <- paste(rep('Ho', n), collapse = ' ')
resposta <- paste(resposta, '!', sep = '')

write(resposta, '')
