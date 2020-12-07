begin
    integer procedure mod(a, n);
    value a, n;
    integer a, n;
    begin
         mod := a - ((a%n)*n)
    end;
 
    integer procedure random(lim);
    value lim;
    integer lim;
    begin
        own integer a; own Boolean b;
        
        if !b then
        begin
            a := 100001;
            b := true
        end;
        a := mod((a * 125), 2796203);
        random := mod(a, lim) + 1
    end;

    procedure greatestNum(A, R, N);
    value N;
    array A; integer R, N;
    begin
        integer r, i;
        
        r := 0;
        for i := 1 step 1 until N do
            if A[i] > A[r] then r := i;
        
        R := A[r]
    end greatestNum;
    
    array A[0:20];
    integer N, i, R;
    
    N := 20;
    
    for i := 0 step 1 until N do A[i] := random(100);
        
    greatestNum(A, R, N);
    
    print(A);
    print(R)
end
