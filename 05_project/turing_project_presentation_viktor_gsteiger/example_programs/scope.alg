begin
    
    integer i;
    boolean b;
    
    b := false;
    i := 0;
    print("Variables at Block A after assignment:");
    print(i);
    print(b);    

    begin
        real r;
        
        i := 100;
        r := 3.14159;

        print("Variables at Block B after assignment:");

        print(i);
        print(b);
        print(r);

        begin
            integer b;
    
            b := 10;
            i := 10;

            print("Variables at Block C after assignment:");

            print(i);
            print(b);
            print(r)

        end;

        print("Variables at Block B after end of Block C:");
            
        print(i);
        print(b);
        print(r)

    end;

    print("Variables at Block A after end of Block B:");

    print(i);
    print(b)
    
end

