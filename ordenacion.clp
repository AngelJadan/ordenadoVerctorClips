(defrule inicio
(vector $?peso )
=>
(assert (vector-aux ?x)))
(defrule ordena
?f <- (vector-aux $?b ?m1 ?m2&:(< ?m2 ?m1) $?e)
=>
(retract ?f)
(assert (vector-aux $?b ?m2 ?m1 $?e)))
(defrule final
(not (vector-aux $?b ?m1 ?m2&:(< ?m2 ?m1) $?e))
(vector $?peso)
(vector-aux $?y)
=>
(printout t "El orden de peso es " ?peso " es " ?y crlf))