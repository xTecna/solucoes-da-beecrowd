import Foundation

let x = readLine(strippingNewline: true)!.components(separatedBy: " ")
let y = readLine(strippingNewline: true)!.components(separatedBy: " ")

var compativel = true
for i in 0..<5 {
  if(x[i] == y[i]){
    compativel = false
    break
  }
}

if(compativel) {
  print("Y")
}else{
  print("N")
}