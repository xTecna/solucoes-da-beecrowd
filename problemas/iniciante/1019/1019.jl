using Printf

segundos = parse(Int, readline())

horas = div(segundos, 3600)
segundos %= 3600
minutos = div(segundos, 60)
segundos %= 60

@printf "%d:%d:%d\n" horas minutos segundos