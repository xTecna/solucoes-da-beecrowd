import Foundation

while (true) {
  let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
  let x = Int(entrada[0])!
  let m = Int(entrada[1])!

  if(x == 0 && m == 0){
    break
  }

  print(x * m)
}