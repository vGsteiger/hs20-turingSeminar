begin
    procedure callByName(arr);
    array arr;
    begin
        integer i;
        i := 0;
        print("Inside call by name function");
        print("Array at index 0");
        print(arr[i]); 
        i := 5; 
        print("Array at index 5");
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

    print("Array at index 5 before call by name");

    print(arr[5]);

    callByName(arr);

    print("Array at index 5 after call by name");

    print(arr[5]);


    i := callByValue(10);

    print("Integer i after call by value with integer return");

    print(i)
end

