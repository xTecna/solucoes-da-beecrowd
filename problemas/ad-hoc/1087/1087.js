var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while (lines.length) {
  let [X1, Y1, X2, Y2] = lines.shift().trim().split(" ").map((x) => parseInt(x));

  if (X1 == X2 && Y1 == Y2)
    console.log(0);
  else if (X1 == X2 || Y1 == Y2 || Math.abs(X1 - X2) == Math.abs(Y1 - Y2))
    console.log(1);
  else
    console.log(2);
}
