use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let t: i32 = input.trim().parse().unwrap();

    for _ in 0..t {
        input = String::new();
        io::stdin().read_line(&mut input);
        let parts: Vec<&str> = input.split(" ").collect();
        let d: i32 = parts[0].trim().parse().unwrap();
        let i: i32 = parts[1].trim().parse().unwrap();
        let b: i32 = parts[2].trim().parse().unwrap();

        input = String::new();
        io::stdin().read_line(&mut input);
        let parts2: Vec<&str> = input.split(" ").collect();
        let mut precos: Vec<i32> = Vec::new();
        for k in 0..i {
            precos.push(parts2[k as usize].trim().parse().unwrap());
        }

        let mut resposta: i32 = 0;
        for _ in 0..b {
            input = String::new();
            io::stdin().read_line(&mut input);
            let parts: Vec<&str> = input.split(" ").collect();
            let q: i32 = parts[0].trim().parse().unwrap();

            let mut custo: i32 = 0;
            for j in 0..q {
                let x: usize = parts[(2 * j + 1) as usize].trim().parse().unwrap();
                let y: i32 = parts[(2 * j + 2) as usize].trim().parse().unwrap();
                custo += precos[x] * y;
            }

            if d / custo > resposta {
                resposta = d / custo;
            }
        }

        println!("{}", resposta);
    }
}
