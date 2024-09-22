using Printf

pessoas = 0
jipes = 0
while true
  palavras = split(readline())

  if palavras[1] == "ABEND"
    break
  end

  numero = parse(Int, palavras[2])
  if palavras[1] == "SALIDA"
    global pessoas += numero
    global jipes += 1
  else
    global pessoas -= numero
    global jipes -= 1
  end
end

@printf "%d\n" pessoas
@printf "%d\n" jipes