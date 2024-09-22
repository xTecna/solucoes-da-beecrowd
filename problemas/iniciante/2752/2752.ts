process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  console.log("<AMO FAZER EXERCICIO NO URI>");
  console.log("<    AMO FAZER EXERCICIO NO URI>");
  console.log("<AMO FAZER EXERCICIO >");
  console.log("<AMO FAZER EXERCICIO NO URI>");
  console.log("<AMO FAZER EXERCICIO NO URI    >");
  console.log("<AMO FAZER EXERCICIO NO URI>");
  console.log("<          AMO FAZER EXERCICIO >");
  console.log("<AMO FAZER EXERCICIO           >");
});