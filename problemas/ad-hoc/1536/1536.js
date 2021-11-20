var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift().trim());

for(let k = 0; k < N; ++k){
    let [M1, x, V2] = lines.shift().trim().split(' ');
    M1 = parseInt(M1);
    V2 = parseInt(V2);

    let [M2, x2, V1] = lines.shift().trim().split(' ');
    M2 = parseInt(M2);
    V1 = parseInt(V1);

    if(M1 + V1 === M2 + V2){
        if(V1 === V2)           console.log("Penaltis");
        else if(V1 > V2)        console.log("Time 1");
        else                    console.log("Time 2");
    }else if(M1 + V1 > M2 + V2) console.log("Time 1");
    else                        console.log("Time 2");
}
