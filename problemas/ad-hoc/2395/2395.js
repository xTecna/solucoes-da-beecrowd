let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let [A, B, C] = lines.shift().trim().split(' ').map(x => parseInt(x));
let [X, Y, Z] = lines.shift().trim().split(' ').map(x => parseInt(x));

console.log(Math.floor(X / A) * Math.floor(Y / B) * Math.floor(Z / C));