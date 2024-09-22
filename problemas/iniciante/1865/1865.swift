import Foundation

let n = Int(readLine(strippingNewline: true)!)!
for _ in 1...n {
  let partes = readLine(strippingNewline: true)!.components(separatedBy: " ")
  if (partes[0] == "Thor") {
    print("Y")
  } else {
    print("N")
  }
}