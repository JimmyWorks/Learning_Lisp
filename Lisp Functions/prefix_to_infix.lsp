; Prefix to Infix Function

; Author:	Jimmy Nguyen
; Email: 	jimmy@jimmyworks.net

; Description: 
; Simple function which converts arithmetic expressions from prefix to infix notation.
; Function also converts infix to prefix!

; Usage:
; (load "prefix_to_infix")
; (prefix_to_infix '(+ (* 7 8) 5))
; > ((7 * 8) + 5)

; Conversion Function
(defun prefix_to_infix (input)
   (if (and 	; Verify input is a list of 3 items
	     (listp input)
	     (= 3 (length input))
		) 		; If valid, call the helper loop
        (prefix_to_infix-loop input)
		nil 	; Else, return nil
	)
)

; Recursive Subroutine
(defun prefix_to_infix-loop (expression)
   (if (or  ; If the expression is a valid symbol or integer, return it
          (integerp expression)
		  (equal expression '+)
		  (equal expression '-)
		  (equal expression '/)
		  (equal expression '*)
        )
		expression
		(if (and	; Else if
			    (listp expression) ; the expression is a list
				(= 3 (length expression)) ; and the list has 3 elements
		     )		
			 ; Evaluate the reordered list to prefix notation 
			 ; Recursively call loop on each element 
			 (list 	(prefix_to_infix-loop (cadr expression)) 
					(prefix_to_infix-loop (car expression)) 
					(prefix_to_infix-loop (caddr expression))
			  )
			 nil  	; Else, return nil as error flag
	    )
    )
)
