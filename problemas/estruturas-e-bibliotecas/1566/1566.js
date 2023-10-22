var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const countingSort = (V, limite) => {
	let aux = Array(limite);
	for(let i = 0; i < limite; ++i){
		aux[i] = 0;
	}
	let k = 0;
	for(let i = 0; i < V.length; ++i){
		aux[V[i]] += 1;
	}
	for(let i = 0; i < limite; ++i){
		for(let j = 0; j < aux[i]; ++j){
			V[k++] = i;
		}
	}
};

let NC = parseInt(lines.shift());
for (let k = 0; k < NC; ++k) {
	let N = parseInt(lines.shift());

	let V = lines.shift().trim().split(' ').map(x => parseInt(x));

	countingSort(V, 231);

	console.log(V.join(' '));
}