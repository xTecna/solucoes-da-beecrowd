using Printf

entrada = [parse(Float64, x) for x in split(readline())]
p1 = entrada[1]
c1 = entrada[2]
p2 = entrada[3]
c2 = entrada[4]

diferenca = p2 * c2 - p1 * c1

if diferenca < 0
  @printf "-1\n"
else
  if diferenca == 0
    @printf "0\n"
  else
    @printf "1\n"
  end
end