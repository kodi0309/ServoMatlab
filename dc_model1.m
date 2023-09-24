function dx=dc_model1 (t,x)

    global ke km Rs L  J  V   Tz 
    fi=x(1); %kąt obrotu wału
    om=x(2); %pochodna fi
    iw=x(3); %prąd w obwodzie
     
    Uz=V;    
    Mo=mom_obc(t) +Tz;
    Me=km*iw;
    E=ke*om;
     
    dx=[    x(2);
              1/J*(Me-Mo);
              1/L*(Uz-E-Rs*iw)];
end