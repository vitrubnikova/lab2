program lr2zad4;

var a,b,x,y1,y2,y3,y4:real;

function ctg(x:real):real; begin ctg:=cos(x)/sin(x) end;
function sec(x:real):real; begin sec:=1/cos(x) end;
function cosec(x:real):real; begin cosec:=1/sin(x) end;
function tg(x:real):real; begin tg:=sin(x)/cos(x) end;
function th(x:real):real; begin th:=(exp(x)-exp(-x))/(exp(x)+exp(-x)) end;
function cth(x:real):real; begin cth:=(exp(x)+exp(-x))/(exp(x)-exp(-x)) end;
function sech(x:real):real; begin sech:=2/(exp(x)+exp(-x)) end;
function cosech(x:real):real; begin cosech:=2/(exp(x)-exp(-x)) end;
function ch(x:real):real; begin ch:=(exp(x)+exp(-x))/2 end;
function arcctg(x:real):real; begin arcctg:=Pi/2-arctan(x) end;
function arcsin(x:real):real; begin
if x=1 then arcsin:=Pi/2
else if x=-1 then arcsin:=-Pi/2
else arcsin:=arctan(x/sqrt(1-x*x)) end;

begin

a:=41.63;
b:=0.069;
x:=7.43;

y1:=arcctg(power(b, 3)+2.3*x) / power(cth(a*power(b, 3)+0.59*x), 0.8);
y2:=arctan(a-power(b, 3)) + power(cosech(b*5.47*x), 0.1);
y3:=sec(a+x) + exp(a*2.36*b-x);
y4:=tg(-2.27*b/sqr(x)) + power(sin(6.85*a*b-sqr(x)), 0.5) - th(0.29*a*sqr(b)/x);

writeln('Ответ ',y1/y2*y3/y4:12:6);

end.