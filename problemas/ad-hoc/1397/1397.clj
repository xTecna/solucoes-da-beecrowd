(require '[clojure.string :as str])

(defn processa [n]
  (let [jogador1 (atom 0)
        jogador2 (atom 0)]
    (doseq [_ (range 0 n)]
      (let [[a b] (map read-string (str/split (read-line) #" "))]
        (if (> a b)
          (swap! jogador1 inc)
          (if (< a b)
            (swap! jogador2 inc) ()))))
    (printf "%d %d\n" @jogador1 @jogador2)))

(defn leitura []
  (loop []
    (let [n (read-string (read-line))]
      (if (zero? n)
        ()
        (do
          (processa n)
          (recur))))))

(leitura)
