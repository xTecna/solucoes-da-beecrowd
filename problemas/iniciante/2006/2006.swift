import Foundation

let t = Int(readLine(strippingNewline: true)!)!
let numeros = readLine(strippingNewline: true)!.components(separatedBy: " ").compactMap { Int($0) }

var corretos = 0
for i in 0..<5 {
  if (numeros[i] == t) {
    corretos += 1
  }
}

print(corretos)