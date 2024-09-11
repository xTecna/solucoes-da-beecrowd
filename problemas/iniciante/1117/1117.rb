notas = []

while notas.size < 2
  nota = gets.to_f

  if nota >= 0 && nota <= 10
    notas << nota
  else
    puts "nota invalida"
  end
end

puts "media = %.2f" % ((notas[0] + notas[1])/2)