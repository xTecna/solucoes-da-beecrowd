using Printf

partes = split(readline(), '.')
partes2 = split(partes[3], '-')

@printf "%s\n%s\n%s\n%s\n" partes[1] partes[2] partes2[1] partes2[2]