(define (domain hanoi)
    (:requirements :strips :typing)
    (:types peg disc)
    (:constants peg1 peg2 peg3 - peg disc1 - disc)
    (:predicates 
        (clear ?x)
        (on ?x - disc ?y)
        (smaller ?x - disc ?y)
    )

    (:action move
        :parameters (?disc - disc ?from ?to)
        :precondition (and
            (smaller ?disc ?to)
            (on ?disc ?from)
            (clear ?disc)
            (clear ?to)
        )
        :effect (and
            (clear ?from)
            (on ?disc ?to)
            (not (on ?disc ?from))
            (not (clear ?to))
        )
    )
)