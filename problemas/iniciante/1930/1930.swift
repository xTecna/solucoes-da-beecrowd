import Foundation

let numeros = readLine(strippingNewline: true)!.components(separatedBy: " ").compactMap { Int( 

var soma = 0
for i in 0..<4 {
  soma += numeros[i]
}
