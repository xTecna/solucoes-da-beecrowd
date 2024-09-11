(require '[clojure.string :as str])

(defn leitura2 []
  (println "Novo grenal (1-sim 2-nao)")
  (let [codigo (read-string (read-line))]
    (cond
      (= codigo 1) true
      (= codigo 2) false
      :else (leitura2))))

(defn leitura []
  (let [[i g] (map read-string (str/split (read-line) #" "))
        [inter gremio empate] (cond
                                (> i g) [1 0 0]
                                (= i g) [0 0 1]
                                :else [0 1 0])
        [i2 g2 e2] (if (leitura2) (leitura) [0 0 0])]
    [(+ inter i2) (+ gremio g2) (+ empate e2)]))

(let [[inter gremio empate] (leitura)
      total (+ inter gremio empate)]
  (printf "%d grenais\n" total)
  (printf "Inter:%d\n" inter)
  (printf "Gremio:%d\n" gremio)
  (printf "Empates:%d\n" empate)
  (println (cond
             (> inter gremio empate) "Inter venceu mais"
             (> gremio inter empate) "Gremio venceu mais"
             :else "Não houve vencedor")))
