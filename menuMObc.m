
% Menu zmiana momentu - program 5

    while(1)
        n52 = menu('Wybierz moment obciążenia Tz [N*m]:', '0.00', '0.01', '0.02', 'Zdefiniuj wartość', 'Cofnij');
        if n52==1
            Tz=0;
            kol='r';
            wykresyOmega;
        elseif n52==2
            Tz=0.01;
            kol='g';
            wykresyOmega;
        elseif n52==3
            Tz=0.02;
            kol='m';
            wykresyOmega;
        elseif n52==4
            prompt = {'Zdefiniuj wartość Tz [N*m]: '};
            dlg_title = 'Deklaracja';
            num_lines = 1;
            def = {''};
            odp = inputdlg(prompt, dlg_title, num_lines, def);
            Tz = str2num(odp{1});
            kol='k';
            wykresyOmega;
        elseif n52==5
            close all
            crv_num=0;
            break
        end
    end