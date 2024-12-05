using Printf

curupira = parse(Int, readline())
boitata = parse(Int, readline())
boto = parse(Int, readline())
mapinguari = parse(Int, readline())
iara = parse(Int, readline())

@printf "%d\n" (225 + 300 * curupira + 1500 * boitata + 600 * boto + 1000 * mapinguari + 150 * iara)