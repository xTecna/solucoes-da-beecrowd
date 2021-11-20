var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let C = parseInt(lines.shift());

for(let i = 0; i < C; ++i){
    let [rajesh, sheldon] = lines.shift().trim().split(' ');

    if(rajesh === sheldon){
        console.log("empate");
    }else if(rajesh === "pedra"){
        if(sheldon === "tesoura" || sheldon === "lagarto")
            console.log("rajesh");
        else
            console.log("sheldon");
    }else if(rajesh === "papel"){
        if(sheldon === "pedra" || sheldon === "spock")
            console.log("rajesh");
        else
            console.log("sheldon");
    }else if(rajesh === "tesoura"){
        if(sheldon === "papel" || sheldon === "lagarto")
            console.log("rajesh");
        else
            console.log("sheldon");
    }else if(rajesh === "lagarto"){
        if(sheldon === "papel" || sheldon === "spock")
            console.log("rajesh");
        else
            console.log("sheldon");
    }else if(sheldon === "pedra" || sheldon === "tesoura")
        console.log("rajesh");
    else
        console.log("sheldon");
}
