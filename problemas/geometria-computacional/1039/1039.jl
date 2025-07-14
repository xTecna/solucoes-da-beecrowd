using Printf

function distancia(x1, y1, x2, y2)
  return sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))
end

while !eof(stdin)
  entrada = [parse(Float64, x) for x in split(readline())]
  r1 = entrada[1]
  x1 = entrada[2]
  y1 = entrada[3]
  r2 = entrada[4]
  x2 = entrada[5]
  y2 = entrada[6]
  
  dist = distancia(x1, y1, x2, y2)
  if dist <= r1 - r2
    @printf "RICO\n"
  else
    @printf "MORTO\n"
  end
end