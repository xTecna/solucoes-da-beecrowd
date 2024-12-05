(require '[clojure.string :as str])

(let [[n s] (map read-string (str/split (read-line) #" "))
      saldo (atom s)
      menor (atom s)]
      (doseq [i (range 0 n)]
        (let [movimentacao (read-string (read-line))]
          (reset! saldo (+ @saldo movimentacao))
          (reset! menor (min @menor @saldo))))
      (printf "%d\n" @menor))