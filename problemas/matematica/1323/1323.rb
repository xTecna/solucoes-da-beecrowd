F = []
for i in (0..101)
  F << -1
end
F[1] = 1

def feynman(n)
  F[n] = feynman(n - 1) + n * n if F[n] == -1
  F[n]
end

while true
  n = gets.to_i

  break if n == 0

  puts feynman(n)
end
