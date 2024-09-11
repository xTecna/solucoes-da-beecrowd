(def pares (atom 0))
(def impares (atom 0))
(def positivos (atom 0))
(def negativos (atom 0))

(doseq [_ (range 0 5)]
  (def numero (read-string (read-line)))
  (if (even? numero)
    (swap! pares inc) (swap! impares inc))
  (if (> numero 0) (swap! positivos inc) (if (< numero 0) (swap! negativos inc))))

(printf "%d valor(es) par(es)\n" @pares)
(printf "%d valor(es) impar(es)\n" @impares)
(printf "%d valor(es) positivo(s)\n" @positivos)
(printf "%d valor(es) negativo(s)\n" @negativos)