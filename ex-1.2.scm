; EXERCISE 1.2: Translate the following expression into prefix form:
; (5+4+(2−(3−(6+45)))) / (3(6−2)(2−7))
; 
; See the expression above in WolframAlpha:
; https://www.wolframalpha.com/input/?i=%285%2B4%2B%282%E2%88%92%283%E2%88%92%286%2B45%29%29%29%29+%2F+%283%286%E2%88%922%29%282%E2%88%927%29%29

; -----| ANSWER |-----

(/ (+ 5 4 (- 2 (- 3 (+ 6 45)))) ( * 3 (- 6 2) (- 2 7))) ;Value: -59/60