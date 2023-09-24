function Tz = mom_obc(t)

    global  t1
    % przebieg czasowy momentu obciążającego silnik  
        t1=30;
        if t<t1
        Tz=0;
        else
        Tz=0.3*(t-t1);
end