(let [l (read-string (read-line))
      c (read-string (read-line))]
  (printf "%d\n" (- 1 (bit-xor (mod l 2) (mod c 2)))))