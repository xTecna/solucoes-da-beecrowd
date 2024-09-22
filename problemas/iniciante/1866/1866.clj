(def n (read-string (read-line)))
(doseq [_ (range 0 n)]
  (let [x (read-string (read-line))]
    (printf "%d\n" (mod x 2))))