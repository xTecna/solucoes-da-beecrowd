input <- file('stdin', 'r')

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
ca <- entrada[1]
ba <- entrada[2]
pa <- entrada[3]

entrada <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
cr <- entrada[1]
br <- entrada[2]
pr <- entrada[3]

write(paste(max(cr - ca, 0) + max(br - ba, 0) + max(pr - pa, 0)), '')