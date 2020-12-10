begin
    procedure callByName(arr);
    array arr;
    begin
        integer i;
        i := 0;
        print(arr[i]);
        i := 5;
        print(arr[i]);
        arr[i] := 10
    end;

    integer procedure callByValue(i);
    value i;
    integer i;
    begin
        callByValue := i + 5
    end;

    array arr[0:10];
    integer i;

    arr[0] := 5;
    arr[5] := 0;

    print(arr);

    callByName(arr);

    print(arr);


    i := callByValue(10);

    print(i)
end