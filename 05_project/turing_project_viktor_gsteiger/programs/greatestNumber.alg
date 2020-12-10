begin
    comment This program fills an array with random numbers and then gets the largest assigned number with the procedure greatestNum.;
    integer procedure mod(a, n);
    value a, n;
    integer a, n;
    comment This is a procedure to calculate the modulo of a dividend (a) and an devisor (n). It is a call by value procedure with an integer as return type.;
    begin
         mod := a - ((a%n)*n)
    end;
 
    integer procedure random(lim);
    value lim;
    integer lim;
    comment This is a procedure with a static variable with which the next random number gets generated and the number can be as large as a given limit. It is a call by value procedure with an integer as return type.;
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
    comment This procedure goes through all entries in an array and returns the largest number found within the array. This is a call by name procedure operating upon array A and returning the result in R.;
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
