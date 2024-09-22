import Foundation

let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let n = Int(entrada[0])!
let k = Int(entrada[1])!

var alunos: [String] = []
for _ in 0..<n {
  alunos.append(readLine(strippingNewline: true)!)
}
alunos.sort()
print(alunos[k - 1])
