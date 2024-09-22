process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split("\n");

  let [jipes, pessoas] = [0, 0];
  let [instrucao, numero] = lines.shift()!.trim().split(' ');
  while (instrucao !== "ABEND") {
    if (instrucao == "SALIDA") {
      pessoas += parseInt(numero);
      ++jipes;
    } else {
      pessoas -= parseInt(numero);
      --jipes;
    }

    [instrucao, numero] = lines.shift()!.trim().split(' ');
  }

  console.log(pessoas);
  console.log(jipes);
});