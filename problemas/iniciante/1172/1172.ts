process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  for (let i = 0; i < 10; ++i) {
    let numero = parseInt(lines.shift()!.trim());
    if (numero > 0) {
      console.log(`X[${i}] = ${numero}`);
    } else {
      console.log(`X[${i}] = 1`);
    }
  }
});