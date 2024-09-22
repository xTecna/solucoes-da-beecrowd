import Foundation

var pessoas = 0
var jipes = 0
while (true) {
  let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
  if (entrada[0] == "ABEND") {
    break
  }

  let numero = Int(entrada[1])!
  if (entrada[0] == "SALIDA") {
    pessoas += numero
    jipes += 1
  } else {
    pessoas -= numero
    jipes -= 1
  }
}

print(pessoas)
print(jipes)