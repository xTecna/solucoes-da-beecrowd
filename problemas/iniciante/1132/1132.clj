(def x (read-string (read-line)))
(def y (read-string (read-line)))

(def a (min x y))
(def b (max x y))

(def soma (atom 0))
(doseq [i (range a (+ b 1))]
  (if (== (mod i 13) 0) () (reset! soma (+ @soma i))))

(println @soma)
