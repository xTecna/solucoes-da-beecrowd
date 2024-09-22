import Foundation

let n = Int(readLine(strippingNewline: true)!)!

var levadas: Int = 0
var comportadas: Int = 0
var criancas: [String] = []
for _ in 0..<n {
  let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")

  if (entrada[0] == "+") {
    comportadas += 1
  } else {
    levadas += 1
  }
  
  criancas.append(entrada[1])
}
criancas.sort()

for i in 0..<n {
  print(criancas[i])
}
print(String(format: "Se comportaram: %d | Nao se comportaram: %d", comportadas, levadas))