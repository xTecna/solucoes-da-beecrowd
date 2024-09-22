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

  let criancas = Array(N);
  let [bemComportadas, malComportadas] = [0, 0];
  for (let i = 0; i < N; ++i) {
    let [comportamento, crianca] = lines.shift()!.trim().split(' ');

    if (comportamento === '+') ++bemComportadas;
    else ++malComportadas;

    criancas[i] = crianca;
  }

  criancas.sort();

  for (let i = 0; i < N; ++i) {
    console.log(criancas[i]);
  }
  console.log(`Se comportaram: ${bemComportadas} | Nao se comportaram: ${malComportadas}`);
});