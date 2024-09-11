use std::io;

fn main() {
    let mut inputA = String::new();
    let mut inputB = String::new();
    let mut inputC = String::new();
    let mut inputD = String::new();

    io::stdin().read_line(&mut inputA);
    io::stdin().read_line(&mut inputB);
    io::stdin().read_line(&mut inputC);
    io::stdin().read_line(&mut inputD);

    let a: i32 = inputA.trim().parse().unwrap();
    let b: i32 = inputB.trim().parse().unwrap();
    let c: i32 = inputC.trim().parse().unwrap();
    let d: i32 = inputD.trim().parse().unwrap();

    println!("DIFERENCA = {}", a * b - c * d);
}