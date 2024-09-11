(def f (transient (vec (repeat 14 -1))))
(assoc! f 1 1)

(defn fatorial [n]
  (if (== (nth f n) -1)
    (assoc! f n (* n (fatorial (- n 1)))) ())
  (nth f n))

(def n (read-string (read-line)))
(println (fatorial n))
