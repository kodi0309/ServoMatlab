figure('Name','Program2','WindowState','maximized','NumberTitle','off')

V=12;
Rs=1;

% Menu J
    while(1)
        n2 = menu('Wybierz moment J [kg*m^2]:', '0.001', '0.002', '0.003', 'Zdefiniuj wartość', 'Cofnij');
        if n2==1
            J=0.001;
            kol='r';
            wykresy;
        elseif n2==2
            J=.002;
            kol='g';
            wykresy;
        elseif n2==3
            J=0.003;
            kol='m';
            wykresy;
        elseif n2==4
            prompt = {'Zdefiniuj wartość J [kg*m^2]: '};
            dlg_title = 'Deklaracja';
            num_lines = 1;
            def = {''};
            odp = inputdlg(prompt, dlg_title, num_lines, def);
            J = str2num(odp{1});
            kol='k';
            wykresy;
        elseif n2==5
            close all
            break
        end
    end