import Foundation

let conteiner = readLine(strippingNewline: true)!.components(separatedBy: " ").compactMap { Int($0) }
let navio = readLine(strippingNewline: true)!.components(separatedBy: " ").compactMap { Int($0) }

print((navio[0] / conteiner[0]) * (navio[1] / conteiner[1]) * (navio[2] / conteiner[2]))
