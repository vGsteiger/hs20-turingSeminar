begin
    comment This program assigns continuous numbers to an array and then shuffles the array according to the Fisher-Yates shuffle.;
    integer procedure mod(a, n);
    comment This is a procedure to calculate the modulo of a dividend (a) and an devisor (n). It is a call by value procedure with an integer as return type.;
    value a, n;
    integer a, n;
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

    procedure swap(arr, i, j);
    value i, j;
    array arr; integer i, j;
    comment This is a procedure to swap two elements of an array at the given positions. This is a call by name procedure that acts upon the given arr.;
    begin
        integer tmp;

        tmp := arr[i];
        arr[i] := arr[j];
        arr[j] := tmp
    end;

    procedure shuffle(arr, h);
    comment This is an implementation of the Fisher–Yates shuffle. For more information see https://en.wikipedia.org/wiki/Fisher%E2%80%93Yates_shuffle;
    value h;
    array arr; integer h;
    begin
        integer j, i;
        for i := h step -1 until 1 do
        begin
            j := random(i);
            swap(arr, i, j)
        end
    end;

    array arr[0:10];
    integer h, i;

    h := 10;
    for i := 0 step 1 until h do arr[i] := i;

    print(arr);
    shuffle(arr, h);
    print(arr)

end
