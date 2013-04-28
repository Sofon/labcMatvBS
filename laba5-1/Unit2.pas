unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ComCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    UpDown1: TUpDown;
    StringGrid1: TStringGrid;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
Type
  Massiv = array of integer;
  procedure count(y:massiv;t,r:integer;var p:integer);
  var i:integer;
  begin
  if r-t=0 then begin
  if (cos(y[r]*y[r])>0) and (y[r]>0) then
  p:=p+1;
  end;
  if r-t=1 then  begin
  count(y,r,r,p);
  count(y,t,t,p);
  end;
   if r-t>1 then  begin
    count(y,t,t+((r-t)div 3),p);
    count(y,t+((r-t) div 3)+1,r,p);
   end;
  end;

var
 p:integer;
  x: massiv;
  n,i: byte;
  flag: boolean;
begin
  n:=UpDown1.Position;
  SetLength(x,n);
  flag:=true;
  try
     for i:=1 to n do
       x[i-1]:=StrToInt(StringGrid1.Cells[i,1]);
  except
    flag:=false;
    ShowMessage('Некорректное значение '+IntToStr(i)+'-го элемента массива');
  end;
  if flag then
  begin
  p:=0;
  count(x,0,n-1,p);
   label3.caption:=inttostr(p) ;
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
var i: byte;
begin
  StringGrid1.Cells[0,0]:='#';
  StringGrid1.Cells[0,1]:='X';
  for i:=1 to StringGrid1.ColCount-1 do
    StringGrid1.Cells[i,0]:=IntToStr(i);
end;

procedure TForm2.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
StringGrid1.ColCount := UpDown1.Position+1;
StringGrid1.Cells[UpDown1.Position,0]:=IntToStr(UpDown1.Position);
end;
end.
