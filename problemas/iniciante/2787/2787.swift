import Foundation

let l = Int(readLine(strippingNewline: true)!)!
let c = Int(readLine(strippingNewline: true)!)!
print(1 - ((l % 2) ^ (c % 2)))