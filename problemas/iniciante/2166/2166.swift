import Foundation

let n = Int(readLine(strippingNewline: true)!)!

var resposta = 0.0
if(n == 0){
  resposta = 1.0
}else{
  resposta = 2.0
  for _ in 1..<n {
    resposta = 2.0 + 1.0 / resposta
  }
  resposta = 1.0 + 1.0 / resposta
}

print(String(format: "%.10f", resposta))