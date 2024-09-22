import Foundation

while (true) {
  let n = Int(readLine(strippingNewline: true)!)!

  if (n == 0) {
    break
  }

  var jogador1 = 0
  var jogador2 = 0
  for _ in 0..<n {
    let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
    let a = Int(entrada[0])!
    let b = Int(entrada[1])!
  
    if (a > b) {
      jogador1 += 1
    } else if (a < b) {
      jogador2 += 1
    }
  }

  print(String(format: "%d %d", jogador1, jogador2))
}