use std::io;

fn distancia(x1: f64, y1: f64, x2: f64, y2: f64) -> f64 {
    return ((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)).sqrt();
}

fn main() {
    loop {
        let mut input = String::new();
    
        match io::stdin().read_line(&mut input) {
            Ok(0) => {
                break;
            }
            Ok(_) => {
                let numeros: Vec<f64> = input.split_whitespace().map(|s| s.parse().expect("")).collect();
                let r1 = numeros[0];
                let x1 = numeros[1];
                let y1 = numeros[2];
                let r2 = numeros[3];
                let x2 = numeros[4];
                let y2 = numeros[5];

                let dist = distancia(x1, y1, x2, y2);
                if dist <= r1 - r2 {
                    println!("RICO");
                } else {
                    println!("MORTO");
                }
            }
            Err(_) => {
                break;
            }
        }
    }
}
