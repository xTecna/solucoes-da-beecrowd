process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const linha = '---------------------------------------';
  console.log(linha);
  for (let i = 0; i < 5; ++i) {
    console.log('|                                     |');
  }
  console.log(linha);
});