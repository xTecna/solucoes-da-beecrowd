import Foundation

let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let cv = Int(entrada[0])!
let ce = Int(entrada[1])!
let cs = Int(entrada[2])!
let fv = Int(entrada[3])!
let fe = Int(entrada[4])!
let fs = Int(entrada[5])!

let cp = 10000 * (3 * cv + ce) + cs;
let fp = 10000 * (3 * fv + fe) + fs;

if (cp > fp) {
    print("C")
} else if (fp > cp) {
    print("F")
} else {
    print("=")
}