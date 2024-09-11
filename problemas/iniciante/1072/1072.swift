import Foundation

let n = Int(readLine(strippingNewline: true)!)!

var dentro = 0
var fora = 0
for _ in 0..<n {
  let numero = Int(readLine(strippingNewline: true)!)!
  if(10 <= numero && numero <= 20){
    dentro += 1
  } else {
    fora += 1
  }
}

print(String(format: "%d in", dentro))
print(String(format: "%d out", fora))