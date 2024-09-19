import Foundation

while true {
  let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
  let l = Int(entrada[0])!
  let r = Int(entrada[1])!

  if(l == 0 && r == 0){
    break
  }

  print(l + r)
}