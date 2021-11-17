let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let [x, y] = lines.shift().trim().split(" ").map((x) => parseFloat(x));

if (x > 0.0) {
    if (y > 0.0) console.log("Q1");
    else if (y < 0.0) console.log("Q4");
    else console.log("Eixo X");
} else if (x < 0.0) {
    if (y > 0.0) console.log("Q2");
    else if (y < 0.0) console.log("Q3");
    else console.log("Eixo X");
} else {
    if (y > 0.0) console.log("Eixo Y");
    else if (y < 0.0) console.log("Eixo Y");
    else console.log("Origem");
}