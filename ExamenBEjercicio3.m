init_value = 2;
i = 1;
e(i) = 10;
while(e(i)>0.0001)
    if(i == 1)
    x(i)=init_value;
    end
    g(i)=(5)/(x(i)^2-10);
    i=i+1;
    x(i)=g(i-1);
    e(i)=abs(x(i-1)-x(i));
    if(e(i)>50)
        break;
    end
end
tam = size(e);
ite = 1:1:tam(2);
figure('DefaultAxesFontSize',14)
plot(ite,e,'color',[1 0 0],'LineWidth',2);
set(gcf,'color','white');
grid on
xlabel 'Iteraciones'
ylabel 'Error'
title 'ERROR'   