use std::io;

fn main() {
    let mut inputA = String::new();
    let mut inputB = String::new();
    let mut inputC = String::new();

    io::stdin().read_line(&mut inputA);
    io::stdin().read_line(&mut inputB);
    io::stdin().read_line(&mut inputC);

    let a: f64 = inputA.trim().parse().unwrap();
    let b: f64 = inputB.trim().parse().unwrap();
    let c: f64 = inputC.trim().parse().unwrap();

    println!("MEDIA = {:.1}", (2.0 * a + 3.0 * b + 5.0 * c)/10.0);
}