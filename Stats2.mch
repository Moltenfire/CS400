MACHINE
    Stats2
    
VARIABLES
    tally
    
INVARIANT
    tally : 0..10 --> NAT
    
INITIALISATION
    /*tally := {xx,yy| xx: 0..10 & yy = 0}*/
    tally := (0..10) * {0}
    
OPERATIONS
    
    tested(nn) =
    PRE
        nn: NAT &
        nn <= 10
    THEN
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
        SIGMA(zz).(zz: (xx+1)..10 | tally(zz)) - SIGMA(zz).(zz: 0..(xx-1) | tally(zz)) <= xx &
        0 <= SIGMA(zz).(zz: (xx+1)..10 | tally(zz)) - SIGMA(zz).(zz: 0..(xx-1) | tally(zz)) &
        SIGMA(zz).(zz: 0..(xx-1) | tally(zz)) - SIGMA(zz).(zz: (xx+1)..10 | tally(zz)) < xx &
        0 <= SIGMA(zz).(zz: 0..(xx-1) | tally(zz)) - SIGMA(zz).(zz: (xx+1)..10 | tally(zz))
    THEN
        oo := xx
    END
    

END
