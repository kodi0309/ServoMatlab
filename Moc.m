figure('Name','Program4','WindowState','maximized','NumberTitle','off')

global V;
Rs=1;
J=0.001;

% Menu zmiana napięcia - program 4 
    while(1)
        n4 = menu('Wybierz napięcie zasilania V [V]:', '4', '8', '12', 'Zdefiniuj wartość', 'Cofnij');
        if n4==1
            V=4;
            kol='r';
            wykresyMoc;
        elseif n4==2
            V=8;
            kol='g';
            wykresyMoc;
        elseif n4==3
            V=12;
            kol='m';
            wykresyMoc;
        elseif n4==4
            prompt = {'Zdefiniuj wartość V [V]: '};
            dlg_title = 'Deklaracja';
            num_lines = 1;
            def = {''};
            odp = inputdlg(prompt, dlg_title, num_lines, def);
            V = str2num(odp{1});
            kol='k';
            wykresyMoc;
        elseif n4==5
            close all
            break
        end
    end