use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    let mut levadas = 0;
    let mut comportadas = 0;
    let mut criancas: Vec<String> = Vec::new();
    for _ in 0..n {
        let mut input2 = String::new();
        io::stdin().read_line(&mut input2);
        let parts: Vec<&str> = input2.split(" ").collect();

        if parts[0] == "+" {
            comportadas += 1
        } else {
            levadas += 1
        }

        let crianca: String = parts[1].trim().parse().unwrap();
        criancas.push(crianca);
    }
    criancas.sort();

    for i in 0..n {
        println!("{}", criancas[i as usize]);
    }
    println!(
        "Se comportaram: {} | Nao se comportaram: {}",
        comportadas, levadas
    );
}
