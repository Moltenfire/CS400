MACHINE
    Prime
    
OPERATIONS
    
    oo <-- isitprime(nn) =
    PRE
        nn:NAT1
    THEN
        IF
            /* Checks all numbers under nn to make sure they don't exactly divide into nn */
            !xx.(xx:NAT => (xx:2..nn-1 => nn mod xx /= 0))
        THEN 
            oo := TRUE
        ELSE 
            oo := FALSE
        END
    END
END