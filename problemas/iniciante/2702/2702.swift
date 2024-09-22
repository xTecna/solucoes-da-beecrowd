import Foundation

var entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let ca = Int(entrada[0])!
let ba = Int(entrada[1])!
let pa = Int(entrada[2])!

entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let cr = Int(entrada[0])!
let br = Int(entrada[1])!
let pr = Int(entrada[2])!

print(max(cr - ca, 0) + max(br - ba, 0) + max(pr - pa, 0))