import Foundation

while true {
  let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
  let x = Double(entrada[0])!
  let y = Double(entrada[1])!

  if (x == y) {
    break
  }

  if(x < y){
    print("Crescente")
  }else{
    print("Decrescente")
  }
}