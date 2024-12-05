import Foundation

let n = Int(readLine(strippingNewline: true)!)!
if (n > 85) {
  print("A")
} else if (n > 60) {
  print("B")
} else if (n > 35) {
  print("C")
} else if (n > 0) {
  print("D")
} else {
  print("E")
}