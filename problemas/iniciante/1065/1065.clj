(def pares (atom 0))

(doseq [_ (range 0 5)]
  (def numero (read-string (read-line)))
  (if (even? numero)
    (swap! pares inc)))

(printf "%d valores pares\n" @pares)
