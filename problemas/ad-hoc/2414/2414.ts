process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');

  console.log(lines.shift()!.trim().split(' ').map((x) => parseInt(x)).reduce((acc, cur) => cur > acc ? cur : acc, 0));
});