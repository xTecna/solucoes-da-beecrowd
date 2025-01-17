(let [n (read-string (read-line))
      grito (atom "")]
  (doseq [_ (range n)]
    (reset! grito (str @grito "a")))
  (printf "Ent%so eh N%st%sl!\n" @grito @grito @grito))