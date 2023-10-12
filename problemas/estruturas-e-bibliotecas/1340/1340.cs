using System;
using System.Collections.Generic;

class FilaDePrioridade {
    private List<Tuple<int, int>> arvore;

    public FilaDePrioridade(){
        this.arvore = new List<Tuple<int, int>>();
        this.arvore.Add(new Tuple<int, int>(0, 0));
    }

    private int pai(int i){
        return i/2;
    }

    private int filhoEsquerdo(int i){
        return 2*i;
    }

    private int filhoDireito(int i){
        return 2*i + 1;
    }

    private int comp(Tuple<int, int> a, Tuple<int, int> b){
        return a.Item2 - b.Item2;
    }

    private void corrigeSubindo(int indice){
        if(indice == 1){
            return;
        }

        int acima = this.pai(indice);
        if(this.comp(this.arvore[acima], this.arvore[indice]) < 0){
            Tuple<int, int> temp = this.arvore[acima];
            this.arvore[acima] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeSubindo(acima);
        }
    }

    public void push(Tuple<int, int> valor){
        this.arvore.Add(valor);
        this.corrigeSubindo(this.arvore.Count - 1);
    }

    private void corrigeDescendo(int indice){
        int abaixo = this.filhoEsquerdo(indice);
        if(abaixo >= this.arvore.Count){
            return;
        }
        if(this.comp(this.arvore[indice], this.arvore[abaixo]) < 0){
            Tuple<int, int> temp = this.arvore[abaixo];
            this.arvore[abaixo] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeDescendo(abaixo);
        }

        abaixo = this.filhoDireito(indice);
        if(abaixo >= this.arvore.Count){
            return;
        }
        if(this.comp(this.arvore[indice], this.arvore[abaixo]) < 0){
            Tuple<int, int> temp = this.arvore[abaixo];
            this.arvore[abaixo] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeDescendo(abaixo);
        }
    }

    public void pop(){
        if(this.arvore.Count <= 1){
            return;
        }

        Tuple<int, int> temp = this.arvore[1];
        this.arvore[1] = this.arvore[this.arvore.Count - 1];
        this.arvore[this.arvore.Count - 1] = temp;
        this.arvore.RemoveAt(this.arvore.Count - 1);
        this.corrigeDescendo(1);
    }

    public Tuple<int, int> top(){
        return this.arvore[1];
    }

    public bool empty(){
        return this.arvore.Count == 1;
    }
}

class URI {
    static void Main(string[] args) {
    	string entrada;
    	
    	while((entrada = Console.ReadLine()) != null){
    		int n = int.Parse(entrada);
    		
    		Stack<int> pilha = new Stack<int>();
    		Queue<int> fila = new Queue<int>();
    		FilaDePrioridade filaDePrioridade = new FilaDePrioridade();
    		bool p = true, f = true, fp = true;
    		for(int i = 0; i < n; ++i){
    			string[] partes = Console.ReadLine().Trim().Split(' ');
    			int elemento = int.Parse(partes[1]);
    			if(partes[0] == "1"){
    				if(p){
    					pilha.Push(elemento);
    				}
    				if(f){
    					fila.Enqueue(elemento);
    				}
    				if(fp){
    					filaDePrioridade.push(new Tuple<int, int>(elemento, elemento));
    				}
    			}else{
    				if(p){
    					if(pilha.Count == 0 || pilha.Peek() != elemento){
    						p = false;
    					}else{
    						pilha.Pop();
    					}
    				}
    				if(f){
    					if(fila.Count == 0 || fila.Peek() != elemento){
    						f = false;
    					}else{
    						fila.Dequeue();
    					}
    				}
    				if(fp){
    					if(filaDePrioridade.empty() || filaDePrioridade.top().Item1 != elemento){
    						fp = false;
    					}else{
    						filaDePrioridade.pop();
    					}
    				}
    			}
    		}
    		
    		if(p && !f && !fp){
    			Console.WriteLine("stack");
    		}else if(!p && f && !fp){
    			Console.WriteLine("queue");
    		}else if(!p && !f && fp){
    			Console.WriteLine("priority queue");
    		}else if(!p && !f && !fp){
    			Console.WriteLine("impossible");
    		}else{
    			Console.WriteLine("not sure");
    		}
    	}
    }
}