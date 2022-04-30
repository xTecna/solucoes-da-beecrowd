var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let arvore = {
    "vertebrado": {
        "ave": {
            "carnivoro": "aguia",
            "onivoro": "pomba"
        },
        "mamifero": {
            "onivoro": "homem",
            "herbivoro": "vaca"
        }
    },
    "invertebrado": {
        "inseto": {
            "hematofago": "pulga",
            "herbivoro": "lagarta"
        },
        "anelideo": {
            "hematofago": "sanguessuga",
            "onivoro": "minhoca"
        }
    }
};

let caracteristicas = [];

for (let i = 0; i < 3; ++i) {
    caracteristicas.push(lines.shift().trim());
}

console.log(arvore[caracteristicas[0]][caracteristicas[1]][caracteristicas[2]]);