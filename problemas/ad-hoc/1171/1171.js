var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let n = parseInt(lines.shift());

let frequencias = Array(2001);
frequencias.fill(0);

for (let i = 0; i < n; ++i) {
  let x = parseInt(lines.shift());

  frequencias[x] += 1;
}

for (let i = 1; i < 2001; ++i) {
  if (frequencias[i] > 0) console.log(`${i} aparece ${frequencias[i]} vez(es)`);
}
