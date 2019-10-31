; A factorial is defined by:
;
; n!=n⋅(n−1)⋅(n−2)⋯3⋅2⋅1.
;
; There are many way to calculate a factorial.
; One way is the following:
;
; n!=n⋅[(n−1)⋅(n−2)⋯3⋅2⋅1]=n⋅(n−1)!.
; => n! is equal to n⋅(n-1)! for any positive integer n.
;
; From this observation, we can calculate a factorial with
; the procedures below
;
; 1. With a linear recursive process

(define (factorial n)
  (if (= n 1)
    1
    (* n (factorial (- n 1)))))

; 2. With a linear iterative process

(define (factorial n) 
  (fact-iter 1 1 n))

(define (fact-iter product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* counter product)
                 (+ counter 1)
                 max-count)))