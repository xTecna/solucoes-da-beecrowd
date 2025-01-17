using Printf

while true
  entrada = [parse(Int, x) for x in split(readline())]
  a = entrada[1]
  b = entrada[2]

  if a == 0 && b == 0
    break
  end

  @printf "%d\n" (2 * a - b)
end