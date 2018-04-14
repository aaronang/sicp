; p(r, k)

; p(0, 0) = 1

; p(1, 0) = 1
; p(1, 1) = 1

; p(2, 0) = 1
; p(2, 1) = p(1, 0) + p(1, 1)
; p(2, 2) = 1

; p(3, 0) = 1
; p(3, 1) = p(2, 0) + p(2, 1)
; p(3, 2) = p(2, 1) + p(2, 2)
; p(3, 3) = 1

(define (p r k)
  (if (or (= k 0) (= k r))
      1
      (+ (p (- r 1) (- k 1))
         (p (- r 1) k))))
