 figure('Name','Program3','WindowState','maximized','NumberTitle','off')
 
 V=12;
 J=0.001;
 
 % Menu Rs
     while(1)
       n3 = menu('Wybierz opór R [Om]:', '1', '2', '3', 'Zdefiniuj wartość', 'Cofnij');
        if n3==1
            Rs=1;
            kol='r';
            wykresy;
        elseif n3==2
            Rs=2;
            kol='g';
            wykresy;
        elseif n3==3
            Rs=3;
            kol='m';
            wykresy;
        elseif n3==4
            prompt = {'Zdefiniuj wartość R [Om]: '};
            dlg_title = 'Deklaracja';
            num_lines = 1;
            def = {''};
            odp = inputdlg(prompt, dlg_title, num_lines, def);
            J = str2num(odp{1});
            kol='k';
            wykresy;
        elseif n3==5
            close all
            break
        end
     end