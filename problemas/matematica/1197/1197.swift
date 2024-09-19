import Foundation

while let linha = readLine(strippingNewline: true) {
  let numeros = linha.components(separatedBy: " ")
  let v = Int(numeros[0])!
  let t = Int(numeros[1])!

  print(v * 2 * t)
}
