(def dentro (atom 0))
(def fora (atom 0))

(def t (read-string (read-line)))

(doseq [_ (range 0 t)]
  (def numero (read-string (read-line)))
  (if (and (>= numero 10) (<= numero 20))
      (swap! dentro inc)
      (swap! fora inc)))

(printf "%d in\n" @dentro)
(printf "%d out\n" @fora)