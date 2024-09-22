import Foundation

let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
var n = Int(entrada[0])!
let m = Int(entrada[1])!

for _ in 0..<m {
  let acao = readLine(strippingNewline: true)!

  if(acao == "fechou"){
    n += 1
  }else{
    n -= 1
  }
}

print(n)