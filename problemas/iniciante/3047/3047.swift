import Foundation

let m = Int(readLine(strippingNewline: true)!)!
let a = Int(readLine(strippingNewline: true)!)!
let b = Int(readLine(strippingNewline: true)!)!

let c = m - a - b

print(max(a, max(b, c)))