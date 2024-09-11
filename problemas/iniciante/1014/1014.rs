use std::io;

fn main() {
    let mut inputA = String::new();
    let mut inputB = String::new();

    io::stdin().read_line(&mut inputA);
    io::stdin().read_line(&mut inputB);
    
    let a: i32 = inputA.trim().parse().unwrap();
    let b: f64 = inputB.trim().parse().unwrap();

    println!("{:.3} km/l", (a as f64 / b));
}