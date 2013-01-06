MACHINE
    Stats
    
VARIABLES
    tally
    
INVARIANT
    tally : 0..10 --> NAT
    
INITIALISATION
    tally := (0..10) * {0}
    
OPERATIONS
    
    tested(nn) =
    PRE
        nn: NAT &
        nn <= 10
    THEN
        /* Adds one to the score */
        tally := tally <+ {nn |-> tally(nn) + 1}
    END;
    
    oo <-- querytot = oo := SIGMA(zz).(zz: dom(tally) | tally(zz));
    
    oo <-- queryreg(nn) =
    PRE
        nn: NAT &
        nn <= 10
    THEN
        oo := tally(nn)
    END;
    
    oo <-- querypc(nn) =
    PRE
        nn: NAT &
        nn <= 10
    THEN
        oo := 100 * tally(nn) / SIGMA(zz).(zz: dom(tally) | tally(zz))
    END;
    
    oo <-- querymean = oo := SIGMA(zz).(zz: dom(tally) | tally(zz) * zz) / SIGMA(zz).(zz: dom(tally) | tally(zz));

    /* As there is no real set of numbers only integers oo is the median if length is odd or lower value if length is even */  
    oo <-- querymedian = 
    ANY
        xx
    WHERE
        xx: dom(tally) & 
        /* If the difference between scores lower than xx and scores higher than xx is between zero and the number of scores at xx then xx is the median. */
        
        /* Checks that lower scores - higher scores is within the range. */
        SIGMA(zz).(zz: (xx+1)..10 | tally(zz)) - SIGMA(zz).(zz: 0..(xx-1) | tally(zz)) <= tally(xx) &
        0 <= SIGMA(zz).(zz: (xx+1)..10 | tally(zz)) - SIGMA(zz).(zz: 0..(xx-1) | tally(zz)) &
        
        /* Checks that higher scores - lower scores is within the range. It has < rather than <= because we want the lower value if the total number of scores is even. */
        SIGMA(zz).(zz: 0..(xx-1) | tally(zz)) - SIGMA(zz).(zz: (xx+1)..10 | tally(zz)) < tally(xx) &
        0 <= SIGMA(zz).(zz: 0..(xx-1) | tally(zz)) - SIGMA(zz).(zz: (xx+1)..10 | tally(zz))
    THEN
        oo := xx
    END
    

END
