import Foundation

while let linha = readLine(strippingNewline: true) {
  let n = Int(linha)!

  for i in 0..<n {
    var resposta = ""
    for j in 0..<n {
      if (i == n - 1 - j) {
        resposta += "2"
      } else if (i == j) {
        resposta += "1"
      } else {
        resposta += "3"
      }
    }
    print(resposta)
  }
}
