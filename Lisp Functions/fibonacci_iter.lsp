; Fibonacci Function (Iterative w/ Global)

; Author:	Jimmy Nguyen
; Email: 	jimmy@jimmyworks.net

; Description: 
; Simple fibonacci function which computes the out to the nth term, iteratively,
; using a global to aide the calculation.

; Usage:
; (mapcar #'fibonacci_iter '(1 2 3 4 5))
; > (1 1 2 3 5)

; Main Fibonacci Routine
; {param} n: integer of nth sequence term
; returns: value of nth term
(defun fibonacci_iter (n)  ; main function
(progn
   (setq x '(0 1)) ; define global list initialized to (0 1)
   (if(eql t (fib_iter_helper n))(cadr x)nil)
))

; Looping Helper Function
; {param} nth: the nth integer in Fibonacci Sequence queried
; returns: T if successful; nil if failed
(defun fib_iter_helper (nth)  ; helper function
   (if (> 0 nth)
       nil   ; check for error
       (loop for i from 1 to (- nth 1) ; loop n-1 times
           do(update_n-1_n)	 ; update the last two terms in global var
           finally(return T) ; return T on success
		)
	)
) 


; Global Step Helper Function
; Increments the last two terms held in the global variable
(defun update_n-1_n ()
	(setq x (list (cadr x) (+ (car x) (cadr x))))
)
