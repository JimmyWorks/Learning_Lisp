; Factorial Function (Tail Recursion)

; Author:	Jimmy Nguyen
; Email: 	jimmy@jimmyworks.net

; Description: 
; Simple factorial function which computes the nth factorial using tail-recursion.

; Usage:
; (load "factorial_tail")
; (mapcar #'factorial_tail '(1 2 3 4 5 6))
; > (1 2 6 24 120 720)

; Factorial (tail-recursion) Function
(defun factorial_tail (n)
   (factorial_helper n 1) ; Call helper function
)

; Factorial Tail Recursion Implementation Function
(defun factorial_helper (n answer)
   (if (= n 1) ; If base case, return the result
      answer
      (factorial_helper (- n 1) (* n answer)) ; Else, reduce counter and add multiple to answer
   )
)
