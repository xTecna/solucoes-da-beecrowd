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
  let [A, B] = lines.shift()!.trim().split(' ').map(x => parseInt(x));

  if (A + B <= N) {
    console.log('Farei hoje!');
  } else {
    console.log('Deixa para amanha!');
  }
});