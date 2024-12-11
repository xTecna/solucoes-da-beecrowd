(require '[clojure.string :as str])

(let [entrada (str/split (read-line) #" ")
      a (read-string (nth entrada 0))
      b (read-string (nth entrada 1))
      c (read-string (nth entrada 2))]
  (if (or (= a b) (= a c) (= b c) (= (+ a b) c) (= (+ a c) b) (= (+ b c) a)) (printf "S\n") (printf "N\n")))
