use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    let mut menor_preco = 1000.0;
    for _ in 0..n {
        input = String::new();
        io::stdin().read_line(&mut input);
        let numeros: Vec<f64> = input.split_whitespace().map(|s| s.parse().expect("")).collect();
        let p = numeros[0];
        let g = numeros[1];

        if (p / g < menor_preco) {
            menor_preco = p / g;
        }
    }

    println!("{:.2}", 1000.0 * menor_preco);
}
