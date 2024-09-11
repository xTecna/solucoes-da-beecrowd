(require '[clojure.string :as str])

(defn somaPA [a1 an n] (quot (* (+ a1 an) n) 2))

(defn leitura [entrada, i]
  (if (> i -1) (if (> (nth entrada i) 0)
                 (nth entrada i)
                 (leitura entrada (- i 1))) ()))

(let [entrada (map read-string (str/split (read-line) #" "))
      a (nth entrada 0)
      n (leitura entrada (- (count entrada) 1))]
  (printf "%d\n" (somaPA a (- (+ a n) 1) n)))