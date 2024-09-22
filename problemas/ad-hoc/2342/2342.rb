n = gets.to_i

numeros = gets.chomp.split
p = numeros[0].to_i
c = numeros[1]
q = numeros[2].to_i

if c == '+'
  if p + q <= n
    puts 'OK'
  else
    puts 'OVERFLOW'
  end
elsif p * q <= n
  puts 'OK'
else
  puts 'OVERFLOW'
end
