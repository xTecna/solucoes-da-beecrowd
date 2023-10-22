var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let N = parseInt(lines.shift());
for (let k = 1; k <= N; ++k) {
	let linha = lines.shift();

	let parcelas = [];
	parcelas.push(parseInt(linha.substring(2, 4)));
	parcelas.push(parseInt(linha.substring(5, 8)));
	parcelas.push(parseInt(linha.substring(11, 13)));

	let resposta = 0;
	for (let i = 0; i < 3; ++i) {
		resposta += parcelas[i];
	}
	console.log(resposta);
}