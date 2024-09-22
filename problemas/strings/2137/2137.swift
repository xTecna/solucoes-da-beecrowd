import Foundation

while let linha = readLine(strippingNewline: true) {
  let n = Int(linha)!

  var biblioteca: [String] = []
  for _ in 0..<n {
    biblioteca.append(readLine(strippingNewline: true)!)
  }
  biblioteca.sort()
  for livro in biblioteca {
    print(livro)
  }
}
