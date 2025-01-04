using Printf

numeros = sort([parse(Int32, x) for x in split(readline())])
@printf "%d\n" numeros[2]