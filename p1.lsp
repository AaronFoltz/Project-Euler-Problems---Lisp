(setf total 0)
(loop for x from 1 to 999 do
	(cond
    	((= 0 (mod x 3)) (setf total (+ total x)))
    	((= 0 (mod x 5)) (setf total (+ total x)))
    	((= 0 (mod x 15)) (setf total (+ total x)))))
(print total)
