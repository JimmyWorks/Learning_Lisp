; Evaluate Infix Function

; Author:	Jimmy Nguyen
; Email: 	jimmy@jimmyworks.net

; Description: 
; Simple function which evaluates infix arithmetic expressions.

; Usage:
; (load "infix_eval")
; (infix_eval '(3 + (4 * 5)))
; > 23


; Main Function
(defun infix_eval (input)
   (if (and 	
	     (listp input) ; If input is a list
	     (= 3 (length input)) ; and list is 3 elements long
		) 		
        (infix_eval-loop input) ; evaluate the expression
		nil 	; Else, return nil
	)
)

; Recursive Subroutine
(defun infix_eval-loop (expression)
   (if (or  ; If the expression is a valid symbol or integer, return it
          (integerp expression)
		  (equal expression '+)
		  (equal expression '-)
		  (equal expression '/)
		  (equal expression '*)
        )
		expression
		(if (and	; Else if
			    (listp expression) ; expression is a list
				(= 3 (length expression)) ; and list is 3 elements long
		     )		
			 ; Evaluate the reordered list to prefix notation
			 ; Recursively call loop on each element within
			 (eval
				(list 
					(infix_eval-loop (cadr expression)) ; Middle element is now first
					(infix_eval-loop (car expression)) 	; First element is now middle
					(infix_eval-loop (caddr expression)) ; Last element is still last
			     )
		      )
			 nil  	; Else, return nil as error flag
	    )
    )
)
