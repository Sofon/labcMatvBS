unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, StdCtrls, ExtCtrls, TeeProcs, Chart, Grids,
  ComCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    Chart1: TChart;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Edit5: TEdit;
    UpDown3: TUpDown;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Series1Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function f(x:real;t:integer):real;
begin
if t=1 then

result:=(ln(x)+sqrt(3.73)-exp(1/3*ln(x*x+4-4*x))-x/2)
else
result:=(ln(44.8)-sin(sqrt(x)))/2-x;
end;

procedure biss (a:real;b:real;e:real;p:integer;out t:integer;out x:real);
var t1,t2:real;
begin
t:=0;
while ((e<(b-a)) and (t<50)) do
 begin
x:=(b+a)/2;
t1:=f(x,p);
t2:=f(a,p);
if (t1*t2)<=0 then b:=x
else a:=x;
t:=t+1;
 end;
x:=(b+a)/2;
end;

procedure newt (a:real;b:real;e:real;p:integer;out t:integer;out x:real);
var x1:real;
begin
 t:=0;
x:=(b+a)/2;
x1:=x +2*e;
while ((e<abs(x-x1)) and (t<50)) do
 begin
x1:=x;
x:=x1-(f(x1,p)/((f(x1+e/2,p)-f(x1-e/2,p))/e));
t:=t+1;
 end;
end;
procedure TForm1.Button1Click(Sender: TObject);
var
 i,k:byte;
 t:integer;
 a,b,x,dx,y: double;
begin
 a:=StrToFloat(Edit1.Text);
 b:=StrToFloat(Edit2.Text);
 k:=strtoint(edit4.text);
 x:=a;
 dx:=(b-a)/(k-1);
 StringGrid1.ColCount:=K+1;
 t:=strtoint(edit5.text);
 for i:=1 to k do
 begin
   y:=f(x,t);
  StringGrid1.Cells[i,0]:=FloatToStrF(x,ffFixed,9,7);
  StringGrid1.Cells[i,1]:=FloatToStrF(y,ffFixed,9,7);
   x:=x+dx;
 end;
end;

procedure TForm1.Button2Click(Sender: TObject);
 var
 i,k:byte;
 t:integer;
 a,b,x,dx,y: double;
begin
 a:=StrToFloat(Edit1.Text);
 b:=StrToFloat(Edit2.Text);
 k:=100;

 x:=a;
 dx:=(b-a)/(k-1);
 Series1.Clear;
 Series2.Clear;
 Series3.Clear;
t:=strtoint(edit5.text);
 for i:=1 to k do
 begin
   y:=f(x,t);
   Series1.AddXY(x,y);
   Series2.AddXY(x,0);
   Series3.AddXY(0,y);
   x:=x+dx;
 end;
end;


procedure TForm1.Button3Click(Sender: TObject);
var a,b,e,x:real;
t,n,i,p:integer;
begin
 a:=StrToFloat(Edit1.Text);
 b:=StrToFloat(Edit2.Text);
  e:=0.1;
   n:=StrToint(Edit3.Text);
   p:=strtoint(edit5.text);
 if f(a,p)*f(b,p)>0 then
  for i:=1 to n do begin
  StringGrid2.Cells[1,i]:='net kornya' ;
  StringGrid2.Cells[3,i]:='net kornya';
  end
  else begin
 for i:=1 to n do begin
 biss(a,b,e,p,t,x);
 StringGrid2.Cells[1,i]:=FloatToStrF(x,ffFixed,10,10);
 StringGrid2.Cells[2,i]:=IntToStr(t);
 e:=e/10;
 end;
  a:=StrToFloat(Edit1.Text);
 b:=StrToFloat(Edit2.Text);
 e:=0.1;
 for i:=1 to n do begin
 newt(a,b,e,p,t,x);
 StringGrid2.Cells[3,i]:=FloatToStrF(x,ffFixed,10,10);
 StringGrid2.Cells[4,i]:=IntToStr(t);
 e:=e/10;
 end;
 end;
end;

procedure TForm1.Edit1Exit(Sender: TObject);

var prob_b: real;
begin
  try
    prob_b:=StrToFloat(Edit1.Text);

    if  ((prob_b)<0) or ((prob_b)>StrToFloat(Edit2.Text))  then
    begin
      ShowMessage('А должно лежать на отрезке (0, 2) и быть меньше B');
      Edit1.Text:='0,01';
    end;
  except
    ShowMessage('A - не число или нужна . вместо ,');
    Edit1.Text:='0,01';
  end;

end;

procedure TForm1.Edit2Exit(Sender: TObject);

 var prob_b: real;
begin
  try
    prob_b:=StrToFloat(Edit2.Text);

    if  ((prob_b)>2) or ((prob_b)<StrToFloat(Edit1.Text))  then
    begin
      ShowMessage('B должно лежать на отрезке (0, 2) и быть больше А');
      Edit2.Text:='1,99';
    end;
  except
    ShowMessage('B - не число или нужна . вместо ,');
    Edit2.Text:='1,99';
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);

var
  i,n: integer;
  e: double;
begin
  StringGrid1.Cells[0,0]:='X';
  StringGrid1.Cells[0,1]:='Y';

  StringGrid2.Cells[0,0]:='  E';
  StringGrid2.Cells[1,0]:='Корень I';
  StringGrid2.Cells[2,0]:='Итераций';
  StringGrid2.Cells[3,0]:='Корень II';
  StringGrid2.Cells[4,0]:='Итераций';

  n:=UpDown1.Position; e:=0.1;
  for i:=1 to n do
  begin
    StringGrid2.Cells[0,i]:=FloatToStrF(e, ffFixed, i+2, i);
    e:=e/10;
  end;
end;
procedure TForm1.Series1Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
ShowMessage(Format('Ближайшая точка (%5.3f; %6.3f)',
                     [Series1.XValue[ValueIndex], Series1.YValue[ValueIndex]]));
end;
end.
