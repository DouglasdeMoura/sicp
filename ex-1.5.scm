; EXERCISE 1.5: Ben Bitdiddle has invented a test
; to determine whether the interpreter he is faced with
; is using applicative-order evaluation or normal-order
; evaluation. He defines the following two procedures:

(define (p) (p))

(define (test x y) 
  (if (= x 0) 
      0 
      y))

; Then he evaluates the expression

(test 0 (p))

; What behavior will Ben observe with an interpreter that uses
; applicative-order evaluation? What behavior will he observe
; with an interpreter that uses normal-order evaluation?
; Explain your answer. (Assume that the evaluation rule for the special
; form if is the same whether the interpreter is using normal or applicative order:
; The predicate expression is evaluated first, and the result determines whether
; to evaluate the consequent or the alternative expression.)

; Definitions:
; APPLICATIVE-ORDER: evaluate arguments and apply (internal reductions are applied first)
; NORMAL-ORDER: fully expand arguments and then reduce

; With APPLICATIVE-ORDER, the arguments (operands) will be evaluated before 
; being reduced. The procedure p just calls itself in a recursive loop,
; thus test is never invoked (The most noticeable effect of applicative-order
; evaluation is that recursive functions may not terminate. For example,
; if an argument to a function must be evaluated before calling the function,
; and if that argument is recursive, the function will never terminate)
; (https://sookocheff.com/post/fp/evaluating-lambda-expressions/).
; 
; With NORMAL-ORDER, p is never evaluated, as the first condition of the
; if-statement evaluates to true.
