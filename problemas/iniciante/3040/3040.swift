import Foundation

let n = Int(readLine(strippingNewline: true)!)!

for _ in 0..<n {
  let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
  let altura = Int(entrada[0])!
  let espessura = Int(entrada[1])!
  let galhos = Int(entrada[2])!

  if 200 <= altura && altura <= 300 && 50 <= espessura && 150 <= galhos {
    print("Sim")
  } else {
    print("Nao")
  }
}