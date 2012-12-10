MACHINE
    Prime

OPERATIONS

    oo <-- isitprime ( nn ) =
    PRE
        nn : NAT1
    THEN
        IF
            ! xx . ( xx : NAT => ( xx : 2 .. nn - 1 => nn mod xx /= 0 ) )
        THEN
            oo := TRUE
        ELSE
            oo := FALSE
        END
    END
END
