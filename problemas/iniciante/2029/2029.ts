process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.trim().split('\n');

  const PI = 3.14;
  while (lines.length) {
    let V = parseFloat(lines.shift()!);
    let D = parseFloat(lines.shift()!);

    D /= 2;

    let area = PI * D * D;
    let altura = V / area;

    console.log(`ALTURA = ${altura.toFixed(2)}`);
    console.log(`AREA = ${area.toFixed(2)}`);
  }
});