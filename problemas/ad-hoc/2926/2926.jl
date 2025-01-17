using Printf

n = parse(Int, readline())

grito = ""
for i = 1:n
  global grito *= "a"
end

@printf "Ent%so eh N%st%sl!\n" grito grito grito