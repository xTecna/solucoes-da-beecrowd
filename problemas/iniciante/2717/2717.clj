(require '[clojure.string :as str])

(let [n (read-string (read-line))
      entrada (map read-string (str/split (read-line) #" "))
      a (nth entrada 0)
      b (nth entrada 1)]
  (if (<= (+ a b) n)
    (printf "Farei hoje!\n")
    (printf "Deixa para amanha!\n")))