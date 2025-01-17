input <- file('stdin', 'r')

n <- as.integer(readLines(input, n=1))

grito <- ""
for(i in 1:n) {
    grito <- paste0(grito, "a")
}

write(paste0("Ent", grito, "o eh N", grito, "t", grito, "l!"), '')