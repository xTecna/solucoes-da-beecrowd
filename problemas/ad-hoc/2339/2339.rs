use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let parts: Vec<&str> = input.split(" ").collect();
    let c: i32 = parts[0].trim().parse().unwrap();
    let p: i32 = parts[1].trim().parse().unwrap();
    let f: i32 = parts[2].trim().parse().unwrap();

    if p >= c * f {
        println!("S");
    } else {
        println!("N");
    }
}
