(require '[clojure.string :as str])

(let [n (read-string (read-line))
    levadas (atom 0)
    comportadas (atom 0)
    criancas (atom [])]
(doseq [i (range 0 n)]
  (let [entrada (str/split (read-line) #" ")
        comportamento (nth entrada 0)
        crianca (nth entrada 1)]
    (if (= comportamento "+") (swap! comportadas inc) (swap! levadas inc))
    (swap! criancas conj crianca)))
(let [ordenado (sort @criancas)]
  (doseq [i (range 0 n)]
    (println (nth ordenado i))))
(printf "Se comportaram: %d | Nao se comportaram: %d\n" @comportadas @levadas))
