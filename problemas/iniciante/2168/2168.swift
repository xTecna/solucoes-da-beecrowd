import Foundation

func segura(m: [[Int]], i: Int, j: Int) -> Bool {
  return m[i][j] + m[i + 1][j] + m[i][j + 1] + m[i + 1][j + 1] >= 2
}

let n = Int(readLine(strippingNewline: true)!)!

var m = [[Int]](repeating: [Int](repeating: 0, count: n + 1), count: n + 1)
for i in 0..<(n+1) {
  let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
  for j in 0..<(n+1) {
    m[i][j] = Int(entrada[j])!
  }
}

for i in 0..<n {
  var resposta = ""
  for j in 0..<n {
    if(segura(m: m, i: i, j: j)){
      resposta += "S"
    }else{
      resposta += "U"
    }
  }
  print(resposta)
}