; Fibonacci Function (Recursive)

; Author:	Jimmy Nguyen
; Email: 	jimmy@jimmyworks.net

; Description: 
; Simple fibonacci function which computes the out to the nth term recursively.

; Usage:
; (mapcar #'fibonacci_recur ‘(1 2 3 4 5))
; > (1 2 3 5 8)

; Fibonacci Function
(defun fibonacci_recur (n)
    (if ( or (= n 0) (= n 1))   ; If term is 0 or 1
      1							; return 1
	  ; Else, call fibonacci recursively on the previous two terms and return the sum
      (+ (fibonacci_recur (- n 1)) (fibonacci_recur (- n 2)))
	)
)
