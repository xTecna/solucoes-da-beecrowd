(require '[clojure.string :as str])

(let [n (read-string (read-line))]
  (doseq [_ (range 0 n)]
    (let [[h, m, o] (map read-string (str/split (read-line) #" "))]
      (if (= o 1)
        (printf "%02d:%02d - A porta abriu!\n" h m)
        (printf "%02d:%02d - A porta fechou!\n" h m)))))