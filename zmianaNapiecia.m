figure('Name','Program1','WindowState','maximized','NumberTitle','off')

global V;
Rs=1;
J=0.001;

% Menu V
    while(1)
        n1 = menu('Wybierz napięcie zasilania V [V]:', '4', '8', '12', 'Zdefiniuj wartość', 'Cofnij');
        if n1==1
            V=4;
            kol='r';
            wykresy;
        elseif n1==2
            V=8;
            kol='g';
            wykresy;
        elseif n1==3
            V=12;
            kol='m';
            wykresy;
        elseif n1==4
            prompt = {'Zdefiniuj wartość V [V]: '};
            dlg_title = 'Deklaracja';
            num_lines = 1;
            def = {''};
            odp = inputdlg(prompt, dlg_title, num_lines, def);
            V = str2num(odp{1});
            kol='k';
            wykresy;
        elseif n1==5
            close all
            break
        end
    end