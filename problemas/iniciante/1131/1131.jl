using Printf

inter = 0
gremio = 0
empate = 0

while true
  global inter
  global gremio
  global empate
  
  entrada = split(readline())
  
  i = parse(Int32, entrada[1])
  g = parse(Int32, entrada[2])

  if i > g
    inter += 1
  else
    if g > i
      gremio += 1
    else
      empate += 1
    end
  end
  
  codigo = 0
  while codigo != 1 && codigo != 2
    @printf "Novo grenal (1-sim 2-nao)\n"
    codigo = parse(Int32, readline())
  end
  if codigo == 2
    break
  end
end

@printf "%d grenais\n" (inter + gremio + empate)
@printf "Inter:%d\n" inter
@printf "Gremio:%d\n" gremio
@printf "Empates:%d\n" empate
if inter > gremio && inter > empate
  @printf "Inter venceu mais\n"
else
  if gremio > inter && gremio > empate
    @printf "Gremio venceu mais\n"
  else
    @printf "Nao houve vencedor\n"
  end
end