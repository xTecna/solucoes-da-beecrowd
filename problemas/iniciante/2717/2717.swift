import Foundation

let n = Int(readLine(strippingNewline: true)!)!
let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let a = Int(entrada[0])!
let b = Int(entrada[1])!

if(a + b <= n) {
  print("Farei hoje!")
}else{
  print("Deixa para amanha!")
}