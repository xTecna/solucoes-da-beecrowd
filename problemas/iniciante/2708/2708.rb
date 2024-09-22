jipes = 0
pessoas = 0
while entrada = gets
  entrada = entrada.chomp
  break if entrada == 'ABEND'

  palavras = entrada.split
  if palavras[0] == 'SALIDA'
    pessoas += palavras[1].to_i
    jipes += 1
  else
    pessoas -= palavras[1].to_i
    jipes -= 1
  end
end

puts pessoas
puts jipes
