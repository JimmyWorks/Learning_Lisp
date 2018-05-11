; Flatten Function 

; Author:	Jimmy Nguyen
; Email: 	jimmy@jimmyworks.net

; Description: 
; Function flattens all the elements in a list with sub-lists

; Usage:
; (flatten '(this (is) a list of (stuff i need to buy)))
; > (THIS IS A LIST OF STUFF I NEED TO BUY)

; Recursive Solution for Flatten
(defun flatten (object)
   (if(null object)	; If null, return nil
	    nil
       (if(listp object) ;Else if is a list
	       ;Recursively flatten the car and cdr of the list and append the resulting lists
          (append (flatten (car object)) (flatten (cdr object)))
	      (list object) ;Else, return list of the one atom/object
        )
    )	  
)