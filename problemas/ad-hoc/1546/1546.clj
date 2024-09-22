(def nomes ["Rolien", "Naej", "Elehcim", "Odranoel"])

(def n (read-string (read-line)))
(doseq [_ (range 0 n)]
  (def k (read-string (read-line)))
  (doseq [_ (range 0 k)]
    (def feedback (read-string (read-line)))
    (printf "%s\n" (nth nomes (- feedback 1)))))