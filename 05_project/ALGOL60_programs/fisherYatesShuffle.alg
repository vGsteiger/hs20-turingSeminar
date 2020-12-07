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

    procedure swap(arr, i, j);
    value i, j;
    array arr; integer i, j;
    begin
        integer tmp;

        tmp := arr[i];
        arr[i] := arr[j];
        arr[j] := tmp
    end;

    procedure shuffle(arr, h);
    comment This is an implementation of the Fisher–Yates shuffle;
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
