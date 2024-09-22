import Foundation

let n = Int(readLine(strippingNewline: true)!)!

var resposta = 0.0
if(n == 0){
  resposta = 3.0
}else{
  resposta = 6.0
  for _ in 1..<n {
    resposta = 6.0 + 1.0 / resposta
  }
  resposta = 3.0 + 1.0 / resposta
}

print(String(format: "%.10f", resposta))