import Foundation

let n = Int(readLine(strippingNewline: true)!)!
for _ in 0..<n {
  let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
  let h = Int(entrada[0])!
  let m = Int(entrada[1])!
  let o = Int(entrada[2])!

  if(o == 1){
    print(String(format: "%02d:%02d - A porta abriu!", h, m))
  }else{
    print(String(format: "%02d:%02d - A porta fechou!", h, m))
  }
}