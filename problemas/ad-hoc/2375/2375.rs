use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let diametro: i32 = input.trim().parse().unwrap();

    input = String::new();
    io::stdin().read_line(&mut input);
    let numeros: Vec<i32> = input.split_whitespace().map(|s| s.parse().expect("")).collect();
    let altura = numeros[0];
    let largura = numeros[1];
    let profundidade = numeros[2];

    if (diametro <= altura && diametro <= largura && diametro <= profundidade) {
        println!("S");
    } else {
        println!("N");
    }
}
