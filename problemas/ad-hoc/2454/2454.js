let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let [P, R] = lines.shift().trim().split(" ").map((x) => parseInt(x));

console.log(`${P ? (R ? "A" : "B") : "C"}`);
