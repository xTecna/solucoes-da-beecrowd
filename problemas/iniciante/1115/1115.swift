import Foundation

while true {
  let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
  let x = Double(entrada[0])!
  let y = Double(entrada[1])!

  if (x == 0 || y == 0) {
    break
  }

  if(x > 0){
    if(y > 0){
      print("primeiro")
    }else{
      print("quarto")
    }
  }else{
    if(y > 0){
      print("segundo")
    }else{
      print("terceiro")
    }
  }
}