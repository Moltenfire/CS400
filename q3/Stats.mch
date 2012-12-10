MACHINE
    Stats
    
VARIABLES
    tally
    
INVARIANT
    tally : 0..10 --> NAT
    
INITIALISATION
    tally := {xx,yy| xx: 0..10 & yy = 0}
    
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
    
    /*oo <-- querymedian = 
   Not sure how to do this, probably needs a loop
    
      */  
        
    

END
