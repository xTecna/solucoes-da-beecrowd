(def positivos (atom 0))

(doseq [_ (range 0 6)]
  (def numero (read-string (read-line)))
  (if (> numero 0)
    (swap! positivos inc)))

(printf "%d valores positivos\n" @positivos)
