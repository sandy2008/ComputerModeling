function y = Bisection(f, a, b, tolerance)
    if(f(a) * f(b) < 0)
        while((b - a) / 2 > tolerance)
        c = (a + b) / 2;

        y = c;

        if(f(c) == 0 || (b - a) / 2 < tolerance)
            return
        endif

      
        
        if(f(c) * f(a) > 0) % They have same sign
            a = c;
        else
            b = c;
        endif
    endwhile
    else
        printf("Error in following condition: f(a) * f(b) < 0")
        y="noroot";
    endif

endfunction

