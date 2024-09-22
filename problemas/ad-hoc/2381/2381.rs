use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let parts: Vec<&str> = input.split(" ").collect();
    let n: i32 = parts[0].trim().parse().unwrap();
    let k: i32 = parts[1].trim().parse().unwrap();

    let mut alunos: Vec<String> = Vec::new();
    for _ in 0..n {
        let mut input2 = String::new();
        io::stdin().read_line(&mut input2);
        let linha: String = input2.trim().parse().unwrap();
        alunos.push(linha);
    }
    alunos.sort();

    println!("{}", alunos[(k - 1) as usize]);
}
