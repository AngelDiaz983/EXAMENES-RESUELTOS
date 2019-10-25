 syms x
    cf=('cos(x+1)-sin(x+1)+0.8');
    f=inline(cf);
    derivada=diff(cf,x);
    df=inline(derivada);
    tol=0.001;
    error=50;

    x=0;
    n=0;
    disp(' n xi error')
    fprintf('\t%i\t%3.5f\t%f\n',n,x,error);
    n=n+1;
    x=x-f(x)/df(x);
    error=abs(f(x));

    tam = size(error);
    ite = 1:1:tam(2);
    figure('DefaultAxesFontSize',14)
    plot(ite,error,'color',[1 0 0],'LineWidth',2);
    set(gcf,'color','white');
    grid on
    xlabel 'iteraciones'
    ylabel 'error'
    title 'ERROR'

 