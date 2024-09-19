using Printf

F = [-1 for i in 1:101]
F[1] = 1

function feynman(n)
  if(F[n] == -1)
    global F[n] = feynman(n - 1) + (n * n);
  end
  return F[n]
end

while true
  n = parse(Int32, readline())

  if n == 0
    break
  end

  @printf "%d\n" feynman(n)
end