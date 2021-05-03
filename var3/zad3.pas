program lr2zad3;

var a,b,x,y1,y2,y3,y4:real;

function ctg(x:real):real; begin ctg:=cos(x)/sin(x) end;
function cosec(x:real):real; begin cosec:=1/sin(x) end;
function sh(x:real):real; begin sh:=(exp(x)-exp(-x))/2 end;
function th(x:real):real; begin th:=(exp(x)-exp(-x))/(exp(x)+exp(-x)) end;
function cth(x:real):real; begin cth:=(exp(x)+exp(-x))/(exp(x)-exp(-x)) end;
function arcctg(x:real):real; begin arcctg:=Pi/2-arctan(x) end;
function arcsin(x:real):real; begin
if x=1 then arcsin:=Pi/2
else if x=-1 then arcsin:=-Pi/2
else arcsin:=arctan(x/sqrt(1-x*x)) end;

begin

a:=32.33;
b:=0.096;
x:=0.13;

y1:=cosec(a+sqr(b)/-1.43/x) / power(arcsin(b/x), 0.4);
y2:=arcctg(-0.5*a-b+x) + power(sh(x/1.31/a), 2.7);
y3:=power(8.401, b-x) / power(log10(power(a, 3)-b+2.89*x), 1.4);
y4:=power(x, -0.9*b)-power(b, b/a) / cos(3.37*a-b/power(x, 3));

writeln('Ответ ',y1/y2*y3/y4:12:6);

end.