let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let [x1, y1] = lines.shift().split(" ").map((x) => parseFloat(x));
let [x2, y2] = lines.shift().split(" ").map((x) => parseFloat(x));

let distancia = Math.sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));

console.log(distancia.toFixed(4));