import Foundation

var inter = 0
var gremio = 0
var empate = 0
var codigo = 0
while (codigo != 2) {
  let numeros = readLine(strippingNewline: true)!.components(separatedBy: " ").compactMap { Int 
  let i = numeros[0]
  let g = numeros[1]

  if (i > g) {
    inter += 1
  } else if (i == g) {
    empate += 1
  } else {
    gremio += 1
  }

  codigo = 0
  while (codigo != 1 && codigo != 2) {
    print("Novo grenal (1-sim 2-nao)")
    codigo = Int(readLine(strippingNewline: true)!)!
  }
}

print(String(format: "%d grenais", inter + gremio + empate))
print(String(format: "Inter:%d", inter))
print(String(format: "Gremio:%d", gremio))
print(String(format: "Empates:%d", empate))
if (inter > gremio && inter > empate) {
  print("Inter venceu mais")
} else if (gremio > inter && gremio > empate) {
  print("Gremio venceu mais")
} else {
  print("Nao houve vencedor")
