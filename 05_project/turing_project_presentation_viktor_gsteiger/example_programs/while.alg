begin

    integer i, max;

    i := 0;
    max := 10;

    WHILE:
        if i >= max then go to EXIT;
    
        i := i + 1;
        print(i);
    
        go to WHILE;
    EXIT:
        print(i)

end

