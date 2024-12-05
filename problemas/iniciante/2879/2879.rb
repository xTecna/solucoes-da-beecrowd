n = gets.to_i

vitorias = 0
for i in 1..n
  x = gets.to_i
  if x != 1 then
    vitorias += 1
  end
end

puts vitorias