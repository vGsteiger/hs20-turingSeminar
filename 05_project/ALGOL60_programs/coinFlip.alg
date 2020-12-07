begin
    integer procedure mod(a, n);
    value a, n;
    integer a, n;
    begin
         mod := a - ((a%n)*n)
    end;
 
    procedure random(lim, res);
    value lim;
    integer lim, res;
    begin
        own integer a; own Boolean b;
        
        if !b then
        begin
            a := 100001;
            b := true
        end;
        a := mod((a * 125), 2796203);
        res := mod(a, lim) + 1
    end;
    
    procedure testCoinflip(res, max);
    value max;
    integer res, max;
    begin
        integer i, tmp;
        
        res := 0; 
        for i := 0 step 1 until max do
        begin
            tmp := 0;
            random(100, tmp);
            if tmp < 50 then res := res + 1
        end
    end;
    
    integer res, max; real percentage;
    
    res := 0; percentage := 0; max := 10000;
    
    testCoinflip(res, max);
    
    percentage := (res / max) * 100;
    print(percentage)
end
