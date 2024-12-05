import Foundation

let numeros = readLine(strippingNewline: true)!.components(separatedBy: " ").compactMap { Int($0) }
print(max(numeros[0], numeros[1]))