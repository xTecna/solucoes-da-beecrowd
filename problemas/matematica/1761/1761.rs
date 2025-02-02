use std::io;

fn main() {
    let pi = 3.141592654;
    loop {
        let mut input = String::new();

        match io::stdin().read_line(&mut input) {
            Ok(0) => {
                break;
            }
            Ok(_) => {
                let numeros: Vec<f64> = input.split_whitespace().map(|s| s.parse().expect("")).collect();
                let a = numeros[0];
                let b = numeros[1];
                let c = numeros[2];

                println!("{:.2}", 5.0 * ((a * pi / 180.0).tan() * b + c));
            }
            Err(_) => {
                break;
            }
        }
    }
}
