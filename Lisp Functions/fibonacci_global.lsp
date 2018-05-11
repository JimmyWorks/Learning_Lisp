; Fibonacci Function (Recursive w/ Global)

; Author:	Jimmy Nguyen
; Email: 	jimmy@jimmyworks.net

; Description: 
; Simple fibonacci function which computes the out to the nth term recursively using a 
; global to aide the calculation.

; Usage:
; (mapcar #'fibonacci_global ‘(1 2 3 4 5))
; > (1 1 2 3 5)

; Fibonacci Function
(defun fibonacci_global (n)  ; main function
(progn
   (setq global '(0 1)) ; define global list initialized to (0 1) representing last two terms
   (if(eql T (fib_global_helper 1 n)) 	; call helper function to perform the calculation
		(cadr global)  					; if helper function successful, return last integer in list
		nil)							; else return nil
	)  
)

; Helper Function which uses the defined global
(defun fib_global_helper (count nth)
   (if (= count nth) 	; If nth iteration
       T   				; return T for success
       ( if ( < count nth) ; If count less than nth
            (progn
			; set global to list of last 2 in sequence
			; by moving last value to first position
			; and calculating the new last position as a sum of the previous two
			(setf global (list (cadr global) (+ (car global) (cadr global))))  
			(fib_global_helper (+ count 1) nth) ; Call recursively
			)
            nil)))   ; return nil for failure

