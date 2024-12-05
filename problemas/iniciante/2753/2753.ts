process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  for (let letra = 97; letra < 123; ++letra) {
    console.log(`${letra} e ${String.fromCharCode(letra)}`);
  }
});