(require '[clojure.string :as str])

(defn somaPA [a1 an n] (quot (* (+ a1 an) n) 2))

(let [n (read-string (read-line))]
  (doseq [_ (range 0 n)]
    (let [[a, y] (map read-string (str/split (read-line) #" "))
          x (+ a (- 1 (mod a 2)))]
      (printf "%d\n" (somaPA x (+ x (* 2 (- y 1))) y)))))