using Printf

conteiner = [parse(Int32, x) for x in split(readline())]
navio = [parse(Int32, x) for x in split(readline())]

@printf "%d\n" (div(navio[1], conteiner[1]) * div(navio[2], conteiner[2]) * div(navio[3], conteiner[3]))