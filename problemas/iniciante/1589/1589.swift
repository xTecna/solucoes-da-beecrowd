import Foundation

let n = Int(readLine(strippingNewline: true)!)!
for _ in 1...n {
  let numeros = readLine(strippingNewline: true)!.components(separatedBy: " ").compactMap { Int($0) }
  print(numeros[0] + numeros[1])
}