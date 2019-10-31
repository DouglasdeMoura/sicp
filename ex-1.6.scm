; EXERCISE 1.6: Alyssa P. Hacker doesn’t see why if needs
; to be provided as a special form. “Why can’t I just define
; it as an ordinary procedure in terms of cond?” she asks.
; Alyssa’s friend Eva Lu Ator claims this can
; indeed be done, and she defines a new version of if:

(define (new-if predicate 
                then-clause 
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; Eva demonstrates the program for Alyssa:

(new-if (= 2 3) 0 5) ;Value: 5
(new-if (= 1 1) 0 5) ;Value: 0

; Delighted, Alyssa uses new-if to rewrite the square-root program:

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

; What happens when Alyssa attempts to use this to compute square roots? Explain.

; -----| ANSWER |-----

; Since Scheme is an applicative order language, if you try to replace the
; if-statement (which is treated specially by the evaluator) with your own procedure,
; in the code above, returns the error "Aborting!: maximum recursion depth exceeded".
; As all the arguments are evaluated as soon as the functions is called, before the
; new-if is applied. As new-if is called recursively by sqrt-izer, a infinite loop
; is created, thus, returning the error.