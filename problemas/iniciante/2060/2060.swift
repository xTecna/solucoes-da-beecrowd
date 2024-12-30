import Foundation

let n = Int(readLine(strippingNewline: true)!)!
let numeros = readLine(strippingNewline: true)!.components(separatedBy: " ").compactMap { Int($0) }

var dois = 0
var tres = 0
var quatro = 0
var cinco = 0
for i in 0..<n {
  if (numeros[i] % 2 == 0) {
    dois += 1
    }
  if (numeros[i] % 3 == 0) {
    tres += 1
  }
  if (numeros[i] % 4 == 0) {
    quatro += 1
  }
  if (numeros[i] % 5 == 0) {
    cinco += 1
  }
}

print(dois, "Multiplo(s) de 2")
print(tres, "Multiplo(s) de 3")
print(quatro, "Multiplo(s) de 4")
print(cinco, "Multiplo(s) de 5")