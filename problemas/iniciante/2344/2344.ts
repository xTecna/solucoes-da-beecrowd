process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  const conceito = (nota) => {
    if (nota > 85) {
      return 'A';
    }
    if (nota > 60) {
      return 'B';
    }
    if (nota > 35) {
      return 'C';
    }
    if (nota > 0) {
      return 'D';
    }
    return 'E';
  };

  let N = parseInt(lines.shift()!);
  console.log(conceito(N));
});