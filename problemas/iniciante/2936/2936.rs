use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let curupira: i32 = input.trim().parse().unwrap();

    input = String::new();
    io::stdin().read_line(&mut input);
    let boitata: i32 = input.trim().parse().unwrap();

    input = String::new();
    io::stdin().read_line(&mut input);
    let boto: i32 = input.trim().parse().unwrap();

    input = String::new();
    io::stdin().read_line(&mut input);
    let mapinguari: i32 = input.trim().parse().unwrap();

    input = String::new();
    io::stdin().read_line(&mut input);
    let iara: i32 = input.trim().parse().unwrap();

    println!(
        "{}",
        225 + 300 * curupira + 1500 * boitata + 600 * boto + 1000 * mapinguari + 150 * iara
    );
}
