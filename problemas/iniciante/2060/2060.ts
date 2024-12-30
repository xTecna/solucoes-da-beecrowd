process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let N = parseInt(lines.shift()!);
  let numeros = lines.shift()!.trim().split(' ').map((x) => parseInt(x));

  for (let i = 2; i < 6; ++i) {
    console.log(`${numeros.reduce((acc, cur) => (cur % i === 0) ? acc + 1 : acc, 0)} Multiplo(s) de ${i}`);
  }
});