using Printf

while true
  entrada = [parse(Int32, x) for x in split(readline())]
  m = entrada[1]
  n = entrada[2]

  if m == 0 && n == 0
    break
  end

  soma = replace(string(m + n), "0" => "")
  @printf "%s\n" soma
end