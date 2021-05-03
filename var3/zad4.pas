program lr2zad4;

var a,b,x,y1,y2,y3,y4:real;

function ctg(x:real):real; begin ctg:=cos(x)/sin(x) end;
function cosec(x:real):real; begin cosec:=1/sin(x) end;
function sh(x:real):real; begin sh:=(exp(x)-exp(-x))/2 end;
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

a:=86.62;
b:=0.066;
x:=4.53;

y1:=power(b, b/5.13/x) / power(sech(a*-0.7*power(b, 3)), 0.5);
y2:=cth(a*sqr(b)/-1.31/x) * power(ctg(a*sqr(b)/0.97/x), 0.7);
y3:=ch(x) * power(arctan(power(b, 4)+0.65*x), 1.4);
y4:=abs(a/-2.2/b+sqr(x)) + power(cosech(b+x), 0.1) + arcctg(4.96*x/a);

writeln('Ответ ',y1/y2+y3/y4:12:6);

end.