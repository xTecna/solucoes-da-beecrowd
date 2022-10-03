var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const inicializa = () => {
    let dano = {};
    let raio = {};

    dano["fire"] = 200;
    raio["fire"] = {};
    raio["fire"][1] = 20;
    raio["fire"][2] = 30;
    raio["fire"][3] = 50;

    dano["water"] = 300;
    raio["water"] = {};
    raio["water"][1] = 10;
    raio["water"][2] = 25;
    raio["water"][3] = 40;

    dano["earth"] = 400;
    raio["earth"] = {};
    raio["earth"][1] = 25;
    raio["earth"][2] = 55;
    raio["earth"][3] = 70;

    dano["air"] = 100;
    raio["air"] = {};
    raio["air"][1] = 18;
    raio["air"][2] = 38;
    raio["air"][3] = 60;

    return [dano, raio];
};

const dentro = (x1, y1, x2, y2, xc, yc, r) => {
    const xm = Math.max(x1, Math.min(xc, x2));
    const ym = Math.max(y1, Math.min(yc, y2));

    return ((xm - xc) * (xm - xc) + (ym - yc) * (ym - yc)) <= r * r;
};

const [dano, raio] = inicializa();

const resolve = (magia, nivel, x1, y1, x2, y2, xc, yc) => {
    if (dentro(x1, y1, x2, y2, xc, yc, raio[magia][nivel]))
        return dano[magia];
    return 0;
};

let T = parseInt(lines.shift());

for (let i = 0; i < T; ++i) {
    let [w, h, x0, y0] = lines.shift().trim().split(' ').map(x => parseInt(x));
    let [magia, N, cx, cy] = lines.shift().trim().split(' ');
    [N, cx, cy] = [N, cx, cy].map((x) => parseInt(x));

    console.log(resolve(magia, N, x0, y0, x0 + w, y0 + h, cx, cy));
}
