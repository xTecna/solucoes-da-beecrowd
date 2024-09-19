import Foundation

for i in 0...9 {
  let numero = Int(readLine(strippingNewline: true)!)!
  if (numero > 0){
    print(String(format: "X[%d] = %d", i, numero))
  } else {
    print(String(format: "X[%d] = 1", i))
  }
}