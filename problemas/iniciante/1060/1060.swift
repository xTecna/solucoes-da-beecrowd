import Foundation

var positivos = 0
for _ in 0..<6 {
  let numero = Double(readLine(strippingNewline: true)!)!
  if (numero > 0.0) {
    positivos += 1
  }
}

print(String(format: "%d valores positivos", positivos))