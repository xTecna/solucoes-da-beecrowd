(let [s (read-line)
      soma (atom 0)]
  (doseq [c s]
    (let [n (Character/getNumericValue c)]
      (reset! soma (+ @soma n))))
  (printf "%s%d\n" s (mod @soma 2)))
