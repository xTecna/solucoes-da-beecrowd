import Foundation

while (true) {
  let n = Int(readLine(strippingNewline: true)!)!

  if (n == 0) {
    break
  }

  for _ in 0..<n {
    var opcao = -1
    var corretos = 0
    
    let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
    for k in 0..<5 {
      if(Int(entrada[k])! <= 127){
        opcao = k
        corretos += 1
      }
    }
  
    if (corretos == 1) {
      print(Character(UnicodeScalar(65 + opcao)!))
    } else {
      print("*")
    }
  }
}