import Foundation

let numeros = readLine(strippingNewline: true)!.components(separatedBy: " ").compactMap { Int($0) }

var soma = 0
for i in 0..<4 {
  soma += numeros[i]
}
print(soma - 3)