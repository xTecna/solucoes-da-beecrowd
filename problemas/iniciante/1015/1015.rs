use std::io;

fn main() {
    let mut inputA = String::new();
    let mut inputB = String::new();

    io::stdin().read_line(&mut inputA);
    io::stdin().read_line(&mut inputB);
    
    let partsA: Vec<&str> = inputA.split(" ").collect();
    let partsB: Vec<&str> = inputB.split(" ").collect();
    
    let x1: f64 = partsA[0].trim().parse().unwrap();
    let y1: f64 = partsA[1].trim().parse().unwrap();
    let x2: f64 = partsB[0].trim().parse().unwrap();
    let y2: f64 = partsB[1].trim().parse().unwrap();
    
    let distancia = ((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1)).sqrt();

    println!("{:.4}", distancia);
}