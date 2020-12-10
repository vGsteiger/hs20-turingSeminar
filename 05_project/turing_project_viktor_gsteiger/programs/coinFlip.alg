begin
    comment This program runs a coinflip 10000 times and calculates the ration of heads and tails (should be around 50%).;
    integer procedure mod(a, n);
    value a, n;
    integer a, n;
    comment This is a procedure to calculate the modulo of a dividend (a) and an devisor (n). It is a call by value procedure with an integer as return type.;
    begin
         mod := a - ((a%n)*n)
    end;
 
    procedure random(lim, res);
    value lim;
    integer lim, res;
    comment This is a procedure with a static variable with which the next random number gets generated and the number can be as large as a given limit. It is a call by name procedure.;
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
    comment This is a procedure to run the random procedure a max amount of times and return the times head has come up.;
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
