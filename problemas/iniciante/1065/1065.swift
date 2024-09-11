import Foundation

var pares = 0
for _ in 0..<5 {
  let numero = Int(readLine(strippingNewline: true)!)!
  if (numero % 2 == 0) {
    pares += 1
  }
}

print(String(format: "%d valores pares", pares))