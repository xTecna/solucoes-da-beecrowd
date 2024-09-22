import Foundation

let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let p1 = Int(entrada[0])!
let c1 = Int(entrada[1])!
let p2 = Int(entrada[2])!
let c2 = Int(entrada[3])!

let diferenca = p2 * c2 - p1 * c1

if(diferenca < 0) {
  print(-1)
} else if(diferenca == 0) {
  print(0)
} else {
  print(1)
}