process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let K = parseInt(lines.shift()!);

  if (K == 1) console.log("Top 1");
  else if (K <= 3) console.log("Top 3");
  else if (K <= 5) console.log("Top 5");
  else if (K <= 10) console.log("Top 10");
  else if (K <= 25) console.log("Top 25");
  else if (K <= 50) console.log("Top 50");
  else console.log("Top 100");
});