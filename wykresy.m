% Rozwiązanie układu równań
    t=[0:0.01:ts];
    war_pocz=[0 Om_0 0]';
    dx=dc_model1(0,war_pocz);
    [Ts,Xs]=ode45('dc_model1',t,war_pocz);
    Fi=Xs(:,1);
    Om=Xs(:,2);
    Iw=Xs(:,3);

% Wykres 1
    subplot(3,1,1)
    hold on
    condPlot;
    plot(Ts,Om*30/pi,kol,'DisplayName',strAp)
    xlabel('t [s]')
    ylabel(' prędkość obrotowa [obr/min]')
    grid on
 
% Wykres 2
    subplot(3,1,2)
    hold on
    condPlot;
    plot(Ts,Fi*180/pi,kol,'DisplayName',strAp)
    xlabel('t [s]')
    ylabel('kąt obrotu [\circ]')
    grid on

% Wykres 3
    subplot(3,1,3)
    hold on
    condPlot;
    plot(Ts,Iw,kol,'DisplayName',strAp)
    xlabel('t [s]')
    ylabel(' I [A]')
    grid on
    
% Maksimum i legenda
    [maxNumCol, maxIndexCol] = max(Iw);
    [maxNum, col] = max(maxNumCol);
    k = maxIndexCol(col);

    hold on;
    strMAX=' MAX: t=';
    strMAXt=num2str(t(k));
    strMAXv="[s] I=";
    strMAXvd=num2str(maxNum);
    strAp2 = append(strAp,strMAX,strMAXt,strMAXv,strMAXvd,'[A]');
    plot(t(k),Iw(k),'*c', 'DisplayName',strAp2)
    text (t(k),Iw(k),'MAX')

    lgd = legend;
    lgd.FontSize = 14;
    lgd.Title.String = 'Legenda i MAX';