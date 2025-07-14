using Printf

function distancia(x1, y1, x2, y2)
  return sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))
end

while true
  entrada = [parse(Float64, x) for x in split(readline())]
  l = entrada[1]
  c = entrada[2]
  r1 = entrada[3]
  r2 = entrada[4]
  if l == 0 && c == 0 && r1 == 0 && r2 == 0
    break
  end

  x1 = r1
  y1 = r1
  x2 = l - r2
  y2 = c - r2
  
  dist = distancia(x1, y1, x2, y2)
  if l < 2 * r1 || c < 2 * r1 || l < 2 * r2 || c < 2 * r2 || dist < r1 + r2
    @printf "N\n"
  else
    @printf "S\n"
  end
end