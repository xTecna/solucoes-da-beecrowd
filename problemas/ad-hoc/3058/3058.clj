(require '[clojure.string :as str])

(let [n (read-string (read-line))
      menor_preco (atom 1000.0)]
  (do
    (doseq [_ (range n)]
      (let [[p g] (map read-string (str/split (read-line) #" "))]
        (reset! menor_preco (min @menor_preco (/ p g)))))
    (printf "%.2f\n" (* 1000.0 @menor_preco))))