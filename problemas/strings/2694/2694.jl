using Printf

n = parse(Int, readline())
for i = 1:n
  entrada = readline()
  parte1 = parse(Int, entrada[3:4])
  parte2 = parse(Int, entrada[6:8])
  parte3 = parse(Int, entrada[12:13])

  @printf "%d\n" (parte1 + parte2 + parte3)
end