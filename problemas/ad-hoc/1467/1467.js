var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
  let [A, B, C] = lines.shift().trim().split(" ").map((x) => parseInt(x));

  if (A + B + C === 1) {
    if (A === 1) console.log("A");
    else if (B === 1) console.log("B");
    else console.log("C");
  } else if (A + B + C == 2) {
    if (A === 0) console.log("A");
    else if (B === 0) console.log("B");
    else console.log("C");
  } else console.log("*");
}
