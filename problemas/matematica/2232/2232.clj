(let [n (read-string (read-line))]
  (doseq [_ (range 0 n)]
    (let [linha (read-line)]
      (when linha
        (let [n (read-string linha)]
          (printf "%d\n" (- (bit-shift-left 1 n) 1)))))))
