(require '[clojure.string :as str])

(def n (read-string (read-line)))
(def entrada (map read-string (str/split (read-line) #" ")))

(let [dois (atom 0)
      tres (atom 0)
      quatro (atom 0)
      cinco (atom 0)]
  (doseq [i (range 0 n)]
    (do
      (if (= (mod (nth entrada i) 2) 0)
        (swap! dois inc)
        ())
      (if (= (mod (nth entrada i) 3) 0)
        (swap! tres inc)
        ())
      (if (= (mod (nth entrada i) 4) 0)
        (swap! quatro inc)
        ())
      (if (= (mod (nth entrada i) 5) 0)
        (swap! cinco inc)
        ())))
  (printf "%d Multiplo(s) de 2\n" @dois)
  (printf "%d Multiplo(s) de 3\n" @tres)
  (printf "%d Multiplo(s) de 4\n" @quatro)
  (printf "%d Multiplo(s) de 5\n" @cinco))