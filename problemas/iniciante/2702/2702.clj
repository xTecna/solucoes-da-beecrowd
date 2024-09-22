(require '[clojure.string :as str])

(let [entrada (map read-string (str/split (read-line) #" "))
      ca (nth entrada 0)
      ba (nth entrada 1)
      pa (nth entrada 2)
      entrada2 (map read-string (str/split (read-line) #" "))
      cr (nth entrada2 0)
      br (nth entrada2 1)
      pr (nth entrada2 2)]
  (printf "%d\n" (+ (max (- cr ca) 0) (max (- br ba) 0) (max (- pr pa) 0))))