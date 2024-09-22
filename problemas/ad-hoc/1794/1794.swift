import Foundation

let n = Int(readLine(strippingNewline: true)!)!

var entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let la = Int(entrada[0])!
let lb = Int(entrada[1])!

entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let sa = Int(entrada[0])!
let sb = Int(entrada[1])!

if (la <= n && n <= lb && sa <= n && n <= sb) {
  print("possivel")
} else {
  print("impossivel")
}