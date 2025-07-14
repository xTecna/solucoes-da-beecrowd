use std::io;

fn distancia(x1: f64, y1: f64, x2: f64, y2: f64) -> f64 {
    return ((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)).sqrt();
}

fn main() {
    loop {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let numeros: Vec<f64> = input.split_whitespace().map(|s| s.parse().expect("")).collect();
        let l = numeros[0];
        let c = numeros[1];
        let r1 = numeros[2];
        let r2 = numeros[3];
        if l == 0.0 && c == 0.0 && r1 == 0.0 && r2 == 0.0 {
            break;
        }

        let x1 = r1;
        let y1 = r1;
        let x2 = l - r2;
        let y2 = c - r2;
        let dist = distancia(x1, y1, x2, y2);
        if l < 2.0 * r1 || c < 2.0 * r1 || l < 2.0 * r2 || c < 2.0 * r2 || dist < r1 + r2 {
            println!("N");
        } else {
            println!("S");
        }
    }
}
