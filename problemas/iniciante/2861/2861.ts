process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.trim().split('\n');

  let C = parseInt(lines.shift()!);

  for (let k = 0; k < C; ++k) {
      let frase = lines.shift();
      console.log('gzuz');
  }
});