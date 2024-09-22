use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    input = String::new();
    io::stdin().read_line(&mut input);
    let parts: Vec<&str> = input.split(" ").collect();
    let la: i32 = parts[0].trim().parse().unwrap();
    let lb: i32 = parts[1].trim().parse().unwrap();

    input = String::new();
    io::stdin().read_line(&mut input);
    let parts: Vec<&str> = input.split(" ").collect();
    let sa: i32 = parts[0].trim().parse().unwrap();
    let sb: i32 = parts[1].trim().parse().unwrap();

    if la <= n && n <= lb && sa <= n && n <= sb {
        println!("possivel");
    } else {
        println!("impossivel");
    }
}
