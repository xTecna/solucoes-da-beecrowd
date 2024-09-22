import Foundation

let n = Int(readLine(strippingNewline: true)!)!

let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let p = Int(entrada[0])!
let c = entrada[1]
let q = Int(entrada[2])!

if (c == "+") {
  if (p + q <= n) {
    print("OK")
  } else {
    print("OVERFLOW")
  }
} else {
  if (p * q <= n) {
    print("OK")
  } else {
    print("OVERFLOW")
  }
}
