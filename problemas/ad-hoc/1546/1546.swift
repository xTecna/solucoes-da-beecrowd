import Foundation

let nomes = ["Rolien", "Naej", "Elehcim", "Odranoel"]

let n = Int(readLine(strippingNewline: true)!)!
for _ in 0..<n {
  let k = Int(readLine(strippingNewline: true)!)!
  for _ in 0..<k {
    let feedback = Int(readLine(strippingNewline: true)!)!
    print(nomes[feedback - 1])
  }
}