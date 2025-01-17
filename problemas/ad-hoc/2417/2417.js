let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let [cv, ce, cs, fv, fe, fs] = lines.shift().split(" ").map(x => parseInt(x));

let cp = 10000 * (3 * cv + ce) + cs;
let fp = 10000 * (3 * fv + fe) + fs;

if (cp > fp) {
    console.log("C");
} else if (fp > cp) {
    console.log("F");
} else {
    console.log("=");
}