use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let t: i32 = input.trim().parse().unwrap();

    for _ in 0..t {
        input = String::new();
        io::stdin().read_line(&mut input);
        let parts: Vec<&str> = input.split(" ").collect();
        let altura: i32 = parts[0].trim().parse().unwrap();
        let espessura: i32 = parts[1].trim().parse().unwrap();
        let galhos: i32 = parts[2].trim().parse().unwrap();

        if 200 <= altura && altura <= 300 && 50 <= espessura && 150 <= galhos {
            println!("Sim");
        } else {
            println!("Nao");
        }
    }
}
