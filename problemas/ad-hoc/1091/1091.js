var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while (lines.length) {
  let K = parseInt(lines.shift());

  let [N, M] = lines.shift().trim().split(" ").map((x) => parseInt(x));

  for (let i = 0; i < K; ++i) {
    let [X, Y] = lines.shift().trim().split(" ").map((x) => parseInt(x));

    X -= N, Y -= M;

    if (X > 0) {
      if (Y > 0) console.log("NE");
      else if (Y < 0) console.log("SE");
      else console.log("divisa");
    } else if (X < 0) {
      if (Y > 0) console.log("NO");
      else if (Y < 0) console.log("SO");
      else console.log("divisa");
    } else console.log("divisa");
  }
}
