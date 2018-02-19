(define (p) (p))

(define (test x y)
    (if (= x 0)
        0
        y))

(test 0 (p))

; Assuming an applicative-order evaluation, this program will never stop
; executing because it will evaluate its operator and operands first, that is,
; `test`, `0` and `(p)` are evaluated first before applying `test` to its
; operands. The evaluation of `(p)` will result in an infinite loop.

; Assuming a normal-order evaluation, this program will stop executing because
; it lazy-evaluates its operands, that is, the evaluation of the operands is
; delayed until is necessary. In the example, the evaluation of `x` is delayed
; until the conditional check `(= x 0)`. Since `x` is bound to `0`, there is no
; need to evaluate `y`, which is bound to `(p)`, and, therefore, the program
; will peacefully finish its execution.

; Executing this program shows evidence that Scheme is using an
; applicative-order evaluation because the program never completes.