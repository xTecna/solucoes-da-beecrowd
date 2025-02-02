(require '[clojure.string :as str])

(let [[n x] (map read-string (str/split (read-line) #" "))
      alturas (map read-string (str/split (read-line) #" "))
      resposta (atom 1)
      acumulado (atom 1)]
  (doseq [i (range 1 n)]
    (if (<= (- (nth alturas i) (nth alturas (- i 1))) x)
      (swap! acumulado inc)
      (do
        (reset! resposta (max @resposta @acumulado))
        (reset! acumulado 1))))
  (reset! resposta (max @resposta @acumulado))
  (printf "%d\n" @resposta))