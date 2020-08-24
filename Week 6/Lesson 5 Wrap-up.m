function valid = valid_date(year, month, day)
    b = mod(year,4);
    c = mod(year,100);
    d = mod(year,400);
     if (nargin == 3 ) 
       if (isscalar(year) && isscalar(month) && isscalar(day))
         if (month <=0 || day <= 0)
            valid = false;
        elseif ((month == 1) && (day <= 31))
            valid = true;
        elseif ((b == 0) && (c == 0) && (d == 0) && (month == 2) && (day <= 29))
            valid = true;
        elseif ((b == 0) && (c == 0) && (d ~= 0) && (month == 2) && (day <= 29))
            valid = false;
        elseif ((b == 0) && (c ~= 0) && (d ~= 0) && (month == 2) && (day <= 29))
            valid = true;
        elseif ((b ~= 0) && (month == 2) && (day <= 28))
            valid = true;  
        elseif ((month == 3) && (day <= 31))
            valid = true;
        elseif ((month == 4) && (day <= 30))
            valid = true;
        elseif ((month == 5) && (day <= 31))
            valid = true;
        elseif ((month == 6) && (day <= 30))
            valid = true;
        elseif ((month == 7) && (day <= 31))
            valid = true;
        elseif ((month == 8) && (day <= 31))
            valid = true;
        elseif ((month == 9) && (day <= 30))
            valid = true;
        elseif ((month == 10) && (day <= 31))
            valid = true;
        elseif ((month == 11) && (day <= 30))
            valid = true;
        elseif ((month == 12) && (day <= 31))
            valid = true;
        else
            valid = false;
        end
     else
         valid = false;
     end
     end
end