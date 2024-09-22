(let [linha "---------------------------------------"]
  (printf "%s\n" linha)
  (doseq [_ (range 0 5)]
    (printf "|                                     |\n"))
  (printf "%s\n" linha))