#|
EXERCISE 1.11: A function f is defined by the rule that 
f(n)=n if n<3 and f(n)=f(n−1)+2f(n−2)+3f(n−3) if n≥3.
Write a procedure that computes f by means of a recursive process. Write a
procedure that computes f by means of an iterative process.
|#

; -----| ANSWER |-----

(define (f-recursive n)
  (cond ((< n 3) n)
    (else (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3)))))))

; Iterative process:
(define (f-iterative n)
  (define (f-loop n1 n2 n3 index)
    (if (= n index)
        n1
        (f-loop (+ n1 (* 2 n2) (* 3 n3)) n1 n2 (+ 1 index))))
  (if (< n 3)
      n
      (f-loop 2 1 0 2)))