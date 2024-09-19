using Printf

t = readline()

M = zeros(Float64, 12, 12)
for i in 1:12
  for j in 1:12
    M[i, j] = parse(Float64, readline())
  end
end

media = 0.0
quantidade = 0
for i in 8:12
  for j in (14 - i):(i - 1)
    global media = media + M[i, j]
    global quantidade = quantidade + 1
  end
end

if t == "M"
  media = media / quantidade
end

@printf "%.1f\n" media