import Foundation

while let linha = readLine(strippingNewline: true) {
  let senha = Int(linha)!
  print(senha - 1)
}
