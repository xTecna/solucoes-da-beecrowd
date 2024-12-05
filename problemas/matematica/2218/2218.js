let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

const somaPA = (a1, an, n) => (n * (a1 + an)) / 2;

let t = parseInt(lines.shift());

for (let i = 0; i < t; ++i) {
    let n = parseInt(lines.shift());
    console.log(somaPA(1, n, n) + 1);
}