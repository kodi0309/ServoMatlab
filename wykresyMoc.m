% Rozwiązanie układu równań
    t=[0:0.01:ts];
    war_pocz=[0 Om_0 0]';
    dx=dc_model1(0,war_pocz);
    [Ts,Xs]=ode45('dc_model1',t,war_pocz);
    Fi=Xs(:,1);
    Om=Xs(:,2);
    Iw=Xs(:,3);
    P=Iw*V;


% Wykres 4
    hold on
    condPlot;
    plot(Ts,P,kol,'DisplayName',strAp)
    xlabel('t [s]')
    ylabel(' P [W]')
    grid on

% Legenda 
    lgd = legend;
    lgd.FontSize = 14;
    lgd.Title.String = 'Legenda';

