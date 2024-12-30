process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const valor = (letra) => {
    if (isNaN(+letra)) {
      return letra.charCodeAt(0) - 'a'.charCodeAt(0) + 10;
    }
    return +letra;
  }

  const hex_to_char = (numero) => {
    let soma = 0;
    for (let i = 0; i < numero.length; ++i) {
      soma *= 16;
      soma += valor(numero[i]);
    }
    return String.fromCharCode(soma);
  };

  const lines = input.trim().split('\n');

  let n = parseInt(lines.shift()!);
  let letras = lines.shift()!.trim().split(' ').map(x => parseInt(x, 16));

  console.log(letras.map(x => String.fromCharCode(x)).join(''));
});