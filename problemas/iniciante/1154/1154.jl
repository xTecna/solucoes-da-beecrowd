using Printf

soma = 0
quantidade = 0
while true
  global soma
  global quantidade
  
  idade = parse(Int32, readline())
  if idade < 0
    break
  end
  soma += idade
  quantidade += 1
end

@printf "%.2f\n" (soma / quantidade)