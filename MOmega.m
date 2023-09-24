figure('Name','Program5','WindowState','maximized','NumberTitle','off')

global V;
Rs=1;
J=0.001;

crv_num=0; %zmienna do inkrementacji

% Menu napięć - program 5
    while(1)
        n51 = menu('Wybierz napięcie zasilania V [V]:', '4', '8', '12', 'Zdefiniuj wartość', 'Cofnij');
        if n51==1
            V=4;
            kol='r';
            menuMObc;
        elseif n51==2
            V=8;
            kol='g';
            menuMObc;
        elseif n51==3
            V=12;
            kol='m';
            menuMObc;
        elseif n51==4
            prompt = {'Zdefiniuj wartość V [V]: '};
            dlg_title = 'Deklaracja';
            num_lines = 1;
            def = {''};
            odp = inputdlg(prompt, dlg_title, num_lines, def);
            V = str2num(odp{1});
            kol='k';
            menuMObc;
        elseif n51==5
            close all
            break
        end
    end