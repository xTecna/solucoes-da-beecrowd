renas = ["Rudolph", "Dasher", "Dancer", "Prancer",
         "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

soma = sum([int(x) for x in input().strip().split(' ')])
print(renas[soma % 9])
