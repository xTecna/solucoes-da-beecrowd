process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.trim().split('\n');

  const acmToDec = (acm: string) => {
    let potencia = 1, p = 2;
    return acm.split('').reverse().reduce((acc, cur) => {
      let resposta = acc + parseInt(cur) * potencia;
      potencia *= p++;

      return resposta;
    }, 0);
  }

  lines.pop();

  let p = 0;
  while (p < lines.length) {
    let acm = lines[p++].trim();

    console.log(acmToDec(acm));
  }
});