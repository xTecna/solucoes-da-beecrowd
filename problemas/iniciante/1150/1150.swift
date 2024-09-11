import Foundation

let x = Int(readLine(strippingNewline: true)!)!
var z = x
while z <= x {
  z = Int(readLine(strippingNewline: true)!)!
}

var soma = x
var resposta = 1
while soma <= z {
  soma += x + resposta
  resposta += 1
}
print(resposta)