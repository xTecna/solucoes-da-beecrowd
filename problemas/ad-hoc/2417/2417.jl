using Printf

entrada = [parse(Int32, x) for x in split(readline())]
cv = entrada[1]
ce = entrada[2]
cs = entrada[3]
fv = entrada[4]
fe = entrada[5]
fs = entrada[6]

cp = 10000 * (3 * cv + ce) + cs
fp = 10000 * (3 * fv + fe) + fs

if cp > fp
  @printf "C\n"
else
  if fp > cp
    @printf "F\n"
  else
    @printf "=\n"
  end
end