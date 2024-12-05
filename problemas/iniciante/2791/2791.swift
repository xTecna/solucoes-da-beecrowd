import Foundation

let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
for i in 0..<4 {
  if(Int(entrada[i])! == 1){
    print(i + 1)
  }
}