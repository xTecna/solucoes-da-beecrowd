let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.trim().split("\n");

const pi = 3.141592654;
for (let k = 0; k < lines.length; ++k) {
    const [A, B, C] = lines[k].trim().split(" ").map(x => parseFloat(x));
    
    console.log((5 * ((Math.tan(A * pi / 180.0) * B) + C)).toFixed(2));
}