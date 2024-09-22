import Foundation

let s = readLine(strippingNewline: true)!

var soma = 0
for numero in s {
  soma += Int(String(numero))!
}

print("\(s)\(soma % 2)")