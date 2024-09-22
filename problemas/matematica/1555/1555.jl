using Printf

function r(a, b)
  return (9 * a * a) + (b * b)
end

function b(a, b)
  return 2 * (a * a) + (25 * b * b)
end

function c(a, b)
  return -100 * a + (b * b * b)
end

n = parse(Int, readline())
for i in 1:n
  numeros = [parse(Float64, x) for x in split(readline())]
  x = numeros[1]
  y = numeros[2]

  rafael = r(x, y)
  beto = b(x, y)
  carlos = c(x, y)

  if rafael > beto && rafael > carlos
    @printf "Rafael ganhou\n"
  else
    if beto > rafael && beto > carlos
      @printf "Beto ganhou\n"
    else
      @printf "Carlos ganhou\n"
    end
  end
end