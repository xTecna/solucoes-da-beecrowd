process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let N = parseInt(lines.shift()!.trim());
  let [LA, LB] = lines.shift()!.trim().split(' ').map((x) => parseInt(x));
  let [SA, SB] = lines.shift()!.trim().split(' ').map((x) => parseInt(x));

  if (LA <= N && N <= LB && SA <= N && N <= SB) {
    console.log("possivel");
  } else {
    console.log("impossivel");
  }
});