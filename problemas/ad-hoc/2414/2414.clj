(require '[clojure.string :as str])

(let [numeros (map read-string (str/split (read-line) #" "))
      maior (atom (nth numeros 0))]
  (doseq [numero numeros]
    (if (> numero @maior) (reset! maior numero) ()))
  (printf "%d\n" @maior))