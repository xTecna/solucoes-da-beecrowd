use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let entrada: Vec<&str> = input.split(" ").collect();

    let p: i32 = entrada[0].trim().parse().unwrap();
    let r: i32 = entrada[1].trim().parse().unwrap();

    if p == 1 {
        if r == 1 {
            println!("A")
        } else {
            println!("B")
        }
    } else {
        println!("C")
    }
}
