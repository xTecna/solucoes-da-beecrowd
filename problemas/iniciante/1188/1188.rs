use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let opcao = input.trim();

    let mut m: [[f64; 12]; 12] = [[0.0; 12]; 12];
    for i in 0..12 {
        for j in 0..12 {
            let mut input2 = String::new();
            io::stdin().read_line(&mut input2);
            let numero: f64 = input2.trim().parse().unwrap();
            m[i][j] = numero;
        }
    }

    let mut soma = 0.0;
    let mut quantidade = 0;
    for i in 7..12 {
      for j in (12-i)..i {
        soma += m[i][j];
        quantidade += 1;
      }
    }

    if opcao == "M" {
        soma = soma / quantidade as f64;
    }

    println!("{:.1}", soma);
}
