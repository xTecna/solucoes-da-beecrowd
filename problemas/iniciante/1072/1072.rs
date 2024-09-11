use std::io;

fn main() {
    let mut dentro: i32 = 0;
    let mut fora: i32 = 0;

    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();
    for i in 0..n {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let numero: i32 = input.trim().parse().unwrap();

        if numero >= 10 && numero <= 20 {
            dentro += 1;
        } else {
            fora += 1;
        }
    }

    println!("{} in", dentro);
    println!("{} out", fora);
}
