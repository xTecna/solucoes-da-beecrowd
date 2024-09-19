import Foundation

let n = Int(readLine(strippingNewline: true)!)!
for i in 1...n {
  if (n % i == 0) {
    print(i)
  }
}