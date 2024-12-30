using Printf

function mdc(a, b)
  if b == 0
    return a
  end
  return mdc(b, a % b)
end

while !eof(stdin)
  linha = [parse(Int, x) for x in split(readline())]
  x = linha[1]
  y = linha[2]

  @printf "%d\n" ((2 * (x + y)) / mdc(x, y))
end
