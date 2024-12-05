using Printf

function segura(m, i, j)
  return M[i, j] + M[i + 1, j] + M[i, j + 1] + M[i + 1, j + 1] >= 2
end

n = parse(Int32, readline())
@printf "%d\n" ((n + 1) * (n + 2) / 2)