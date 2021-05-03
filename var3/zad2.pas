program lr2zad2;

var a,b,x,y1,y2,y3,y4:real;

function ctg(x:real):real; begin ctg:=cos(x)/sin(x) end;
function cosec(x:real):real; begin cosec:=1/sin(x) end;
function sech(x:real):real; begin sech:=2/(exp(x)+exp(-x)) end;
function th(x:real):real; begin th:=(exp(x)-exp(-x))/(exp(x)+exp(-x)) end;
function cth(x:real):real; begin cth:=(exp(x)+exp(-x))/(exp(x)-exp(-x)) end;
function arcctg(x:real):real; begin arcctg:=Pi/2-arctan(x) end;
function arcsin(x:real):real; begin
if x=1 then arcsin:=Pi/2
else if x=-1 then arcsin:=-Pi/2
else arcsin:=arctan(x/sqrt(1-x*x)) end;

begin

a:=24.73;
b:=0.008;
x:=4.74;

y1:=exp(0.96*a/x) / power(ctg(a*-0.24*x), 1.6);
y2:=cth(x+0.28*power(b, 4)) / power(th(b/x), 0.8);
y3:=arctan(sqr(a)-b+1.58*x) - power(b, a*6.93*b/x);
y4:=sech(a-3.87*x) * power(cosec(b/2.5/x), 2.1) * arcsin(x/a);

writeln('Ответ ',y1/y2+y3/y4:12:6);

end.