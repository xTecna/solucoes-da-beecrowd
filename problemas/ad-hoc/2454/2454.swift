import Foundation

let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let p = Int(entrada[0])!
let r = Int(entrada[1])!

if(p == 1) {
  if(r == 1) {
    print("A")
  }else{
    print("B")
  }
}else{
  print("C")
}