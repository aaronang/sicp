; (A 1 10)
; (A (- 1 1) (A 1 (- 10 1)))
; (A 0 (A 1 9))
; (A 0 (A (- 1 1) (A 1 (- 9 1))))
; (A 0 (A 0 (A 1 8)))
; (A 0 (A 0 (A (- 1 1) (A 1 (- 8 1)))))
; (A 0 (A 0 (A 0 (A 1 7))))
; (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 7 1))))))
; (A 0 (A 0 (A 0 (A 0 (A 1 6)))))
; (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 6 1)))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 5))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 5 1))))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 4)))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 4 1)))))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 3))))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 3 1))))))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 2)))))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A (- 1 1) (A 1 (- 2 1)))))))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1))))))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2)))))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4))))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8)))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 16))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 32)))))
; (A 0 (A 0 (A 0 (A 0 64))))
; (A 0 (A 0 (A 0 128)))
; (A 0 (A 0 256))
; (A 0 512)
; 1024

; (A 2 4)
; (A (- 2 1) (A 2 (- 4 1)))
; (A 1 (A 2 3))
; (A 1 (A (- 2 1) (A 2 (- 3 1))))
; (A 1 (A 1 (A 2 2)))
; (A 1 (A 1 (A (- 2 1) (A 2 (- 2 1)))))
; (A 1 (A 1 (A 1 (A 2 1))))
; (A 1 (A 1 (A 1 2)))
; (A 1 (A 1 4))
; (A 1 16)
; 2^16

; (A 2 2)
; (A (- 2 1) (A 2 (- 2 1)))
; (A 1 (A 2 1))
; (A 1 2)
; 2^2

; (A 2 3)
; (A (- 2 1) (A 2 (- 3 1)))
; (A 1 (A 2 2))
; (A 1 4)
; 2^4

; (A 2 5)
; (A (- 2 1) (A 2 (- 5 1)))
; (A 1 (A 2 4))
; (A 1 (A (- 2 1) (A 2 (- 4 1))))
; (A 1 (A 1 (A 2 3)))
; (A 1 (A 1 (A (- 2 1) (A 2 (- 3 1)))))
; (A 1 (A 1 (A 1 (A 2 2))))
; (A 1 (A 1 (A 1 (A (- 2 1) (A 2 (- 2 1))))))
; (A 1 (A 1 (A 1 (A 1 (A 2 1)))))
; (A 1 (A 1 (A 1 (A 1 2))))
; (A 1 (A 1 (A 1 4)))
; (A 1 (A 1 16))
; (A 1 2^16)
; 2^65536

; (A 2 n)
; (A (- 2 1) (A 2 (- n 1)))
; (A 1 (A 2 (- n 1)))
; (A 1 (A (- 2 1) (A 2 (- n 2))))
; (A 1 (A 1 (A 2 (- n 2))))

; (f n) computes 2n
; (g n) computes 2^n
; (h n) computes 2^(2^(n-1))