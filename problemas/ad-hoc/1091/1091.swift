import Foundation

while (true) {
  let k = Int(readLine(strippingNewline: true)!)!

  if (k == 0) {
    break
  }

  var entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
  let n = Int(entrada[0])!
  let m = Int(entrada[1])!

  for _ in 0..<k {
    entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
    var x = Int(entrada[0])!
    var y = Int(entrada[1])!

    x -= n
    y -= m

    if (x > 0 && y > 0) {
      print("NE")
    } else if (x > 0 && y < 0) {
      print("SE")
    } else if (x < 0 && y > 0) {
      print("NO")
    } else if (x < 0 && y < 0) {
      print("SO")
    } else {
      print("divisa")
    }
  }
}