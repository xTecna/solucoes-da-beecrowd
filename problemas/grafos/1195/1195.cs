using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

class No {
    private int valor { get; set; }
    public No pai { get; set; }
    public No esq { get; set; }
    public No dir { get; set; }

    public No(int valor, No pai = null){
        this.valor = valor;
        this.pai = pai;
        this.esq = null;
        this.dir = null;
    }

    public void adiciona(int valor){
        if(valor == this.valor){
            return;
        }
        if(valor < this.valor){
            if(this.esq == null){
                this.esq = new No(valor, this);
            }else{
                this.esq.adiciona(valor);
            }
        }else{
            if(this.dir == null){
                this.dir = new No(valor, this);
            }else{
                this.dir.adiciona(valor);
            }
        }
    }

    public No busca(int valor){
        if(valor == this.valor){
            return this;
        }else if(valor < this.valor){
            if(this.esq == null){
                return null;
            }
            return this.esq.busca(valor);
        }else{
            if(this.dir == null){
                return null;
            }
            return this.dir.busca(valor);
        }
    }

    public void remove(){
        if(this.esq == null && this.dir == null){
            if(this.pai != null){
                if(this.pai.esq == this){
                    this.pai.esq = null;
                }else{
                    this.pai.dir = null;
                }
            }
        }else if(this.esq == null || this.dir == null){
            No filho = this.esq ?? this.dir;
            if(this.pai != null){
                if(this.pai.esq == this){
                    this.pai.esq = filho;
                }else{
                    this.pai.dir = filho;
                }
            }
        }else{
            No sucessor = this.dir;
            while(sucessor.esq != null){
                sucessor = sucessor.esq;
            }
            this.valor = sucessor.valor;
            sucessor.remove();
        }
    }

    public void prefixa(StringBuilder sb){
        sb.Append($" {this.valor}");
        if(this.esq != null){
            this.esq.prefixa(sb);
        }
        if(this.dir != null){
            this.dir.prefixa(sb);
        }
    }

    public void infixa(StringBuilder sb){
        if(this.esq != null){
            this.esq.infixa(sb);
        }
        sb.Append($" {this.valor}");
        if(this.dir != null){
            this.dir.infixa(sb);
        }
    }

    public void posfixa(StringBuilder sb){
        if(this.esq != null){
            this.esq.posfixa(sb);
        }
        if(this.dir != null){
            this.dir.posfixa(sb);
        }
        sb.Append($" {this.valor}");
    }
}

class ArvoreBinaria {
    public No topo { get; set; }

    public ArvoreBinaria(){
        this.topo = null;
    }

    public void adiciona(int valor){
        if(this.topo == null){
            this.topo = new No(valor);
        }else{
            this.topo.adiciona(valor);
        }
    }

    public bool busca(int valor){
        if(this.topo == null){
            return false;
        }
        return this.topo.busca(valor) != null;
    }

    public void remove(int valor){
        No no = this.topo.busca(valor);

        if(no != null && no.pai == null){
            if(no.esq == null && no.dir == null){
                this.topo = null;
            }else if(no.esq != null || no.dir != null){
                this.topo = no.esq ?? no.dir;
            }
        }
        no.remove();
    }

    public void prefixa(StringBuilder sb){
        sb.Append("Pre.:");
        this.topo.prefixa(sb);
        sb.Append("\n");
    }

    public void infixa(StringBuilder sb){
        sb.Append("In..:");
        this.topo.infixa(sb);
        sb.Append("\n");
    }

    public void posfixa(StringBuilder sb){
        sb.Append("Post:");
        this.topo.posfixa(sb);
        sb.Append("\n");
    }
}

class URI {    
    static void Main(string[] args) {
        StringBuilder sb = new StringBuilder();
        int C = int.Parse(Console.ReadLine());

        for(int k = 1; k <= C; ++k){
            int N = int.Parse(Console.ReadLine());
            List<int> v = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            ArvoreBinaria ab = new ArvoreBinaria();
            for(int i = 0; i < v.Count; ++i){
                ab.adiciona(v[i]);
            }

            sb.Append($"Case {k}:\n");
            ab.prefixa(sb);
            ab.infixa(sb);
            ab.posfixa(sb);
            sb.Append("\n");
        }

        Console.Write(sb.ToString());
    }
}