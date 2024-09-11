use std::io;

fn main() {
    let mut inter = 0;
    let mut gremio = 0;
    let mut empate = 0;
    let mut codigo = 0;
    while codigo != 2 {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let parts: Vec<&str> = input.split(" ").collect();
        let i: i32 = parts[0].trim().parse().unwrap();
        let g: i32 = parts[1].trim().parse().unwrap();

        if i > g {
            inter += 1;
        } else if i == g {
            empate += 1;
        } else {
            gremio += 1;
        }

        codigo = 0;
        while codigo != 1 && codigo != 2 {
            println!("Novo grenal (1-sim 2-nao)");
            input = String::new();
            io::stdin().read_line(&mut input);
            codigo = input.trim().parse().unwrap();
        }
    }

    println!("{} grenais", inter + gremio + empate);
    println!("Inter:{}", inter);
    println!("Gremio:{}", gremio);
    println!("Empates:{}", empate);

    if inter > gremio && inter > empate {
        println!("Inter venceu mais");
    } else if gremio > inter && gremio > empate {
        println!("Gremio venceu mais");
    } else {
        println!("Nao houve vencedor");
    }
}
