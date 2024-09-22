using Printf

function segura(m, i, j)
  return M[i, j] + M[i + 1, j] + M[i, j + 1] + M[i + 1, j + 1] >= 2
end

n = parse(Int32, readline())

M = zeros(Int32, n + 1, n + 1)
for i in 1:(n+1)
  numeros = [parse(Int, x) for x in split(readline())]
  for j in 1:(n+1)
    M[i, j] = numeros[j]
  end
end

for i in 1:n
  for j in 1:n
    if segura(M, i, j)
      @printf "S"
    else
      @printf "U"
    end
  end
  @printf "\n"
end