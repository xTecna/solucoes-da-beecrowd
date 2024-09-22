process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let T = parseInt(lines.shift()!);
  for (let i = 0; i < T; ++i) {
    let [H, M, O] = lines.shift()!.trim().split(' ');

    console.log(`${H.padStart(2, '0')}:${M.padStart(2, '0')} - A porta ${O === "1" ? "abriu"  `
  }
