use std::io;

fn main() {
    let mut notas: Vec<f64> = vec![];

    while notas.len() != 2 {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let nota = input.trim().parse().unwrap();

        if nota >= 0.0 && nota <= 10.0 {
            notas.push(nota);
        } else {
            println!("nota invalida");
        }
    }

    println!("media = {:.2}", (notas[0] + notas[1]) / 2.0);
}
