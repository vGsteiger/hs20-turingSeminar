begin

procedure merge(arr, l, m, r);
value l,m,r;
array arr; integer l,m,r;
begin
    integer n1, n2, i, j, k;
    array L[0:m-l+1], R[0:r-m];
    
    n1 := m-l+1;
    n2 := r-m;
    
    for i := 0 step 1 until n1 - 1 do L[i] := arr[l + i];
    for j := 0 step 1 until n2 - 1 do R[j] := arr[m + 1 + j];
    
    i := 0;
    j := 0;
    
    k := l;
    
    WHILE:
        if i >= n1 | j >= n2 then go to EXIT;
        
        if L[i] <= R[j] then 
        begin 
            arr[k] := L[i]; 
            i := i + 1 
        end
        else
        begin
            arr[k] := R[j];
            j := j + 1
        end;
        k := k + 1;
        
        go to WHILE;
    EXIT:
    
    WHILE2:
        if i >= n1 then go to EXIT2;
        
        arr[k] := L[i];
        i := i + 1;
        k := k + 1;
        
        go to WHILE2;
    EXIT2:
    
    WHILE3:
        if j >= n2 then go to EXIT3;
    
        arr[k] := R[j];
        j := j + 1;
        k := k + 1;
    
        go to WHILE3;
    EXIT3:
    
end;
    
procedure mergeSort(arr, l, r);
value l, r;
array arr; integer l, r;
begin
    integer m;
    m := (l+r-1)%2;
    if l >= r then go to EXIT;
    
    begin
        mergeSort(arr,l,m);
        mergeSort(arr,m+1,r);
        merge(arr,l,m,r)
    end;
    EXIT:

end;

array arr[0:5]; integer i;

arr[0] := 4;
arr[1] := 1;
arr[2] := 9;
arr[3] := 6;
arr[4] := 2;
arr[5] := 3;

print("Before sorting");
print(arr);

mergeSort(arr,0,5);

print("After sorting");
print(arr)

end
