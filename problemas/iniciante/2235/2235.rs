use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let parts: Vec<&str> = input.split(" ").collect();
    let a: i32 = parts[0].trim().parse().unwrap();
    let b: i32 = parts[1].trim().parse().unwrap();
    let c: i32 = parts[2].trim().parse().unwrap();

    if (a == b || a == c || b == c || (a + b) == c || (a + c) == b || (b + c) == a) {
        println!("S");
    } else {
        println!("N");
    }
}
