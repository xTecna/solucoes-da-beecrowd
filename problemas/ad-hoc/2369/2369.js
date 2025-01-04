let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let n = parseInt(lines.shift());

let conta = 7;
if (n > 100) {
    conta += (n - 100) * 5;
    n = 100;
}
if (n > 30) {
    conta += (n - 30) * 2;
    n = 30;
}
if (n > 10) {
    conta += (n - 10);
}

console.log(conta);