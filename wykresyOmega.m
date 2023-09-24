% Rozwiązanie układu równań
    t=[0:0.01:ts];
    war_pocz=[0 Om_0 0]';
    dx=dc_model1(0,war_pocz);
    [Ts,Xs]=ode45('dc_model1',t,war_pocz);
    Fi=Xs(:,1);
    Om=Xs(:,2);
    Iw=Xs(:,3);

% Dobranie omegi
    OmegaMAX=max(Om*30/pi);

% Wykres - pojedyncze punkty
    scatter(OmegaMAX,Tz)
    hold on;
    grid on;
    xlabel('\it\omega [obr/min]')
    ylabel('Moment [N*m]')

% Okno informujące o współrzędnych
    s1='Tz[Nm]: ';
    s2=num2str(Tz);
    s3=' Omega[obr/min]: ';
    s4=num2str(OmegaMAX);
    s5=append(s1,s2,s3,s4);
    okienkoWspolrzedne=msgbox(s5,"Współrzędne");
    
% Połączenie prostą    
    crv_num=crv_num+1; %inkrementacja do połaczenia

    tablicaTz(crv_num)=Tz;
    tablicaOm(crv_num)=OmegaMAX;

   if(crv_num==3)
        % zakreslenie punktów
           plot(tablicaOm, tablicaTz, 'xr', 'MarkerSize',10)
           grid on;
           xlabel('\it\omega [obr/min]')
           ylabel('Moment [N*m]')

        % wymagane Curve Fitting Toolbox
           [dModel, Qfit] = fit(tablicaOm', tablicaTz', 'poly1');
           dFit = dModel(tablicaOm);
           hold on; plot(tablicaOm,dFit,'LineWidth',2)
           xlabel('\it\omega [obr/min]')
           ylabel('Moment [N*m]')
   end