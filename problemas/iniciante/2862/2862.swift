import Foundation

let c = Int(readLine(strippingNewline: true)!)!
for _ in 0..<c {
  let n = Int(readLine(strippingNewline: true)!)!
  if(n <= 8000){
    print("Inseto!")
  }else{
    print("Mais de 8000!")
  }
}