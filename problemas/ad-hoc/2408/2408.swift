import Foundation

var numeros = readLine(strippingNewline: true)!.components(separatedBy: " ")

var competicao: [Int] = []
for i in 0...2 {
    competicao.append(Int(numeros[i])!)
}

competicao.sort()
print(competicao[1])
