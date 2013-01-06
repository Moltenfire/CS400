MACHINE
    Buffer_w(qlen,ELEM)
    
CONSTRAINTS
    qlen : NAT1
    
INCLUDES
    Buffer(qlen,ELEM)
    
PROMOTES
    /* No wrapper needed for these operations */
    emptyquery, fullquery, contentsquery
    
SETS
    ERRORS = {ok, full, empty}
    
OPERATIONS
    
    /* Only performs operation if there is space. Returns a message. */
    rr <-- wrap_add(xx) =
    PRE
        xx:ELEM
    THEN    
        IF
            size(buff) < qlen
        THEN
            BEGIN
                rr := ok ||
                add(xx)
            END
        ELSE
            rr := full
        END
    END;
    
    /* Only performs operation if there is space. Returns a message. */
    rr, ee <-- wrap_remove =
    IF
        buff /= []
    THEN
        BEGIN
            rr := ok ||
            ee <-- remove
        END
    ELSE
        rr := empty
    END
END
