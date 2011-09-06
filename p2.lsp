(defvar total 0)
(setf array (list '1 '1))

(loop
	; Add the new fibonacci number to the beginning of the list
	(setf array (cons (+ (first array) (second array)) array))
	
	; If the number is greater than 4 million
	(if (> (first array) 4000000)
		; THEN
		(progn
			(setf array (rest array)) ;; Remove CAR - it is above 4 million, then return
			(return))
			
		; ELSE
		(progn
			; If it is an even number, add it to the total
			(if (= 0 (mod (first array) 2)) (setf total (+ total (first array)))))))
	
(print total)