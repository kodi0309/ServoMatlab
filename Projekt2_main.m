clc
clear 
close all

disp('Projekt 2 -  Modelowanie i symulacja serwonapędu')
disp('Projekt zrealizowany przez: Klaudiusz Kozłowski, Mariusz Kot 13A6 P04')
disp(' ')
disp(' ')
disp('>> Wciśnij ENTER!')
pause
disp(' ')

kol='k'; % kolor na wykresach (b, k, r, c, m, g, y), domyślnie czarne

% Dane wejściowe
    global Rs L J Bt Tz ke km t
    Rs=1; %[Om] oporność cewki wirnika
    L=0.01;  %[H] indukcyjność cewki
    J=0.001; %[kgm2] moment bezwładności wirnika silnika
    Bt=0.002; %[Nm*s] wsp. oporu obrotu wirnika
    Tz=0; %[Nm] stały moment obciążenia zewnętrznego
    ke=0.1; %stała elektromotoryczna silnika
    km=0.1; %stała momentu silnika

    Om_0=0*pi/30; %początkowa prędkość silnika [rad/s]
    ts=0.7; %[s] czas symulacji
    V=4; %[V] napięcie zasilania
    
    % Ładowanie aplikacji
    wtBar=waitbar(0, "Proszę czekać...");
    for i = 1:100;
            waitbar(i/100, wtBar);
            pause(0.002);
    end
    pause(0.2)
    delete(wtBar);    

    % Opis dostępnych programów
    opis0='Opcje do wyboru: ';
    opis1='Program 1 - wpływ napięcia zasilania podczas rozpędzania silnika bez obciążenia zewnętrznego.';
    opis2='Program 2 - wpływ zmiany momentu bezwładności wirnika podczas rozpędzania silnika bez obciążenia zewnętrznego.';
    opis3='Program 3 - wpływ oporności el. wirnika podczas rozpędzania silnika bez obciążenia zewnętrznego.';
    opis4='Program 4 - wpływ napięcia zasilania na generowaną moc podczas rozpędzania silnika bez obciążenia zewnętrznego';
    opis5='Program 5 - wpływ napięcia zasilania oraz momentu obciążenia podczas rozpędzania silnika.';

    disp(opis0)
    disp(opis1)
    disp(opis2)
    disp(opis3)
    disp(opis4)
    disp(opis5)
    disp(' ')
    disp(' ')

    opisOkienko={opis0 ...
    opis1 ...
    opis2 ...
    opis3...
    opis4 ...
    opis5};

    wyswietlenieOpisu=msgbox(opisOkienko,"Informacja o programie","help"); 


while(1)
    m = menu('Wybierz program do uruchomienia:','Program 1 - (V)','Program 2 - (J)','Program 3 - (Rs)','Program 4 - (P)','Program 5 - (M)',"Zakończ");
    if m==1
        % Program 1
        zmianaNapiecia;
    elseif m==2
        % Program 2
        zmianaMomentu;
    elseif m==3
        % Program 3
        zmianaOprornosci;
    elseif m==4
        % Program 4
        Moc;
    elseif m==5
        % Program 5
        MOmega;
    elseif m==6
        break
    end
end