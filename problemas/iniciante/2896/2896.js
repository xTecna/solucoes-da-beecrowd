let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let t = parseInt(lines.shift());

for (let i = 0; i < t; ++i) {
  let [n, k] = lines
    .shift()
    .trim()
    .split(" ")
    .map((x) => parseInt(x));
  console.log(Math.floor(n / k) + (n % k));
}
