(require '[clojure.string :as str])

(def n (read-string (read-line)))
(doseq [_ (range 0 n)]
  (let [[d, _, b] (map read-string (str/split (read-line) #" "))
        precos (map read-string (str/split (read-line) #" "))
        resposta (atom 0)]
    (doseq [_ (range 0 b)]
      (let [bolo (map read-string (str/split (read-line) #" "))
            custo (atom 0)]
        (doseq [j (range 1 (count bolo) 2)]
          (reset! custo (+ @custo (* (nth precos (nth bolo j)) (nth bolo (+ j 1))))))
        (if (> (quot d @custo) @resposta) (reset! resposta (quot d @custo)) ())))
    (printf "%d\n" @resposta)))