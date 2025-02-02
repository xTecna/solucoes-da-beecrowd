import Foundation

let pi = 3.141592654
while let linha = readLine(strippingNewline: true) {
  let numeros = linha.components(separatedBy: " ")
  let a = Double(numeros[0])!
  let b = Double(numeros[1])!
  let c = Double(numeros[2])!

  print(String(format: "%.2f", 5.0 * (tan(a * pi / 180.0) * b + c)))
}