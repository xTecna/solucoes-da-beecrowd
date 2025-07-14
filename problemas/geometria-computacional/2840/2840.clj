(require '[clojure.string :as str])

(let [pi 3.1415
      [r l] (map read-string (str/split (read-line) #" "))
      v (/ (* 4.0 pi r r r) 3.0)]
  (printf "%d\n" (int (/ l v))))