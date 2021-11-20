let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.trim().split("\n");

lines.forEach((line) => {
  let [a, b] = line.trim().split(" ").map((x) => BigInt(x));

  console.log((a ^ b).toString());
});
