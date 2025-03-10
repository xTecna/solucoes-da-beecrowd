use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    for _ in 0..n {
        input = String::new();
        io::stdin().read_line(&mut input);
        let parts: Vec<&str> = input.split(" ").collect();
        let x: i32 = parts[0].trim().parse().unwrap();
        let y: i32 = parts[1].trim().parse().unwrap();

        println!("{} cm2", (x * y) / 2)
    }
}
