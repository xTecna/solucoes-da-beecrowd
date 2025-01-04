import Foundation

let b = Int(readLine(strippingNewline: true)!)!
let t = Int(readLine(strippingNewline: true)!)!

if (b + t > 160) {
    print(1)
} else if (b + t < 160) {
    print(2)
} else {
    print(0)
}