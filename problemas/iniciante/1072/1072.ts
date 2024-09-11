process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
    input += chunk;
});

process.stdin.on('end', () => {
    let entrada = input.trim().split('\n').map(x => parseInt(x));
    let N = entrada[0];
    let valores = entrada.splice(1);

    let [dentro, fora] = [0, 0];
    for(let i = 0; i < N; ++i){
        if(valores[i] >= 10 && valores[i] <= 20){
            dentro += 1;
        }else{
            fora += 1;
        }
    }

    console.log(`${dentro} in`);
    console.log(`${fora} out`);
});