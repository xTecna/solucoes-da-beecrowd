using Printf

n = parse(Int, readline())

vitorias = 0
for i in 1:n
  x = parse(Int, readline())
  if x != 1
    global vitorias += 1
  end
end

@printf "%d\n" vitorias