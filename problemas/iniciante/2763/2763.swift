import Foundation

let partes = readLine(strippingNewline: true)!.components(separatedBy: ".")
let partes2 = partes[2].components(separatedBy: "-")

print(partes[0])
print(partes[1])
print(partes2[0])
print(partes2[1])