import Foundation

var soma = 0
var quantidade = 0
while (true) {
  let idade = Int(readLine(strippingNewline: true)!)!
  if idade < 0 {
    break
  }
  soma += idade
  quantidade += 1
}

print(String(format: "%.2f", Double(soma) / Double(quantidade)))