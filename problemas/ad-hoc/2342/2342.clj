(require '[clojure.string :as str])

(let [n (read-string (read-line))
      entrada (str/split (read-line) #" ")
      p (read-string (nth entrada 0))
      c (nth entrada 1)
      q (read-string (nth entrada 2))]
  (if (= c "+")
    (if (<= (+ p q) n)
      (printf "OK\n")
      (printf "OVERFLOW\n"))
    (if (<= (* p q) n)
      (printf "OK\n")
      (printf "OVERFLOW\n"))))
