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
  let [P, C, Q] = lines.shift()!.trim().split(' ');
  let p = parseInt(P);
  let q = parseInt(Q);

  if (C === '+') {
    if (p + q <= N)
      console.log("OK");
    else
      console.log("OVERFLOW");
  } else {
    if (p * q <= N)
      console.log("OK");
    else
      console.log("OVERFLOW");
  }
});