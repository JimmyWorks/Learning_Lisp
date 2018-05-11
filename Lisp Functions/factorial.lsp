; Factorial Function (Recursive)

; Author:	Jimmy Nguyen
; Email: 	jimmy@jimmyworks.net

; Description: 
; Simple factorial function which computes the nth factorial recursively.

; Usage:
; (load "factorial")
; (factorial 5)
; > 120

; Factorial
(defun factorial (n)
   (if (= 1 n)			; If 1
         1				; Return 1
         (* n (factorial (- n 1)))	; Else, multiply by next factorial
   )
)
