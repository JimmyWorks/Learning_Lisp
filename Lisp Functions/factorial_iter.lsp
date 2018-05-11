; Factorial Function (Iterative)

; Author:	Jimmy Nguyen
; Email: 	jimmy@jimmyworks.net

; Description: 
; Simple factorial function which computes the nth factorial using iterative solution.

; Usage:
; (load "factorial_iter")
; (mapcar #'factorial_iter '(1 2 3 4 5 6))
; > (1 2 6 24 120 720)

; Factorial Function
(defun factorial_iter (n)
   (factorial_iter_helper n 1 1) ; Call helper function
)

; Factorial Iterative Implementation Function
(defun factorial_iter_helper (n count final)
	(if (> count n)	; if all values up to n have been multiplied
      final			; return final value
	  ; else continue iterating through the count and multiplying by the total
	  (factorial_iter_helper n (+ 1 count) (* count final))
	)
)

