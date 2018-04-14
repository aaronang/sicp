(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))

(define (g n)
  (define (f-iter a b c n)
    (if (= n 0)
        (+ c (* 2 b) (* 3 a))
        (f-iter b c (+ c (* 2 b) (* 3 a)) (- n 1))))
  (if (< n 3)
      n
      (f-iter 0 1 2 (- n 3))))
