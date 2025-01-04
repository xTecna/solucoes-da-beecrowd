import Foundation

let pi = 3.14
while let linha = readLine(strippingNewline: true) {
  let v = Double(linha)!
  let d = Double(readLine(strippingNewline: true)!)! / 2.0

  let area = pi * d * d
  let altura = v / area

  print(String(format: "ALTURA = %.2f", altura))
  print(String(format: "AREA = %.2f", area))
}
