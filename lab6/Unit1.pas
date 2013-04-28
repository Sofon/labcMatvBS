unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    StringGrid1: TStringGrid;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    UpDown3: TUpDown;
    UpDown4: TUpDown;
    procedure Edit4Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
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
type matr= array of array of integer;

procedure proverka(a:matr;var n,m,t1,t2:integer;out n1,m1,flag1:integer);
var i,j:integer;
begin
i:=1;
j:=1;
flag1:=0;
while flag1=0 do begin
  if ((a[i-1,j-1]>=t1) and (a[i-1,j-1]<=t2)) then begin
  t1:=i;
  t2:=j;
  flag1:=1;

  end;
  if a[i-1,j-1] mod 2 = 0 then flag1:=-1;
  
  j:=j+1;
  if j=m+1 then begin
  i:=i+1;
  j:=1;
  end;
  if (i=n+1) and (flag1=0) then flag1:=-3;

  end;

while flag1=1 do begin

  if a[i-1,j-1] mod 2 = 0 then begin
  n1:=i;
  m1:=j;

  flag1:=flag1+2;

  end;
  j:=j+1;
  if j=m+1 then begin
  i:=i+1;
  j:=1;
  end;
  if ((i=n+1) and (flag1=1)) then flag1:=-2;

  end;

end;

procedure poisk(a:matr;var flag1:integer;n1,m1,n,m,t1,t2,t3,t4:integer;out n3,m3:integer);
var i,j,max:integer;
begin
i:=t1;
j:=t2;
max:=a[i-1,j-1];
 while flag1>1 do begin

   if ((A[i-1,j-1]>=max) and (a[i-1,j-1]>=t3) and (a[i-1,j-1]<=t4))  then begin
   n3:=i;
   m3:=j;
   max:=A[i-1,j-1];

   end;

  j:=j+1;
  if j=m+1 then begin
  i:=i+1;
  j:=1;
  end;
  if (i=n1) and (j=m1) then flag1:=-2;

  end;
end;

procedure TForm1.Button1Click(Sender: TObject);

var a: matr;
    n,m,i,j,n1,m1,flag1,t1,t2,n3,m3,t3,t4: integer;
    flag: boolean;
    f: TextFile;

begin
  flag:=true;
  if RadioGroup1.ItemIndex=0 then
   begin
   if OpenDialog1.Execute then
      begin
        assignFile(f, OpenDialog1.FileName);
        try
          reset(f);
          try
             try
               readln(f, n, m);
               if not((n>0) and (n<=20) and (m>0) and (m<=20)) then
                begin
                  flag:=false;
                  ShowMessage('Некорректный размер матрицы');
                end
               else
                begin
                  SetLength(a,n,m);
                  for i:=0 to n-1 do
                  begin
                    for j:=0 to m-1 do
                      read(f, a[i,j]);
                    readln(f);
                  end;


                  UpDown1.Position:=n;
                  UpDown2.Position:=m;
                  for j:=1 to m do
                    StringGrid1.Cells[j,0]:=IntToStr(j);
                  for i:=1 to n do
                    StringGrid1.Cells[0,i]:=IntToStr(i);
                  for i:=1 to n do
                    for j:=1 to m do
                      StringGrid1.Cells[j,i]:=IntToStr(a[i-1,j-1]);
                end;
             except
               flag:=false;
               ShowMessage('Ошибка при вводе/выводе исходных данных');
             end;
          finally
            closeFile(f);
          end;
        except
          flag:=false;
          ShowMessage('Ошибка при открытии файла');
        end;
      end
     else
        flag:=false
   end


  else
   begin
   n:=UpDown1.Position;
   m:=UpDown2.Position;
   SetLength(a,n,m);
   for i:=1 to n do
   for j:=1 to m do
   a[i-1,j-1]:=strtoint(StringGrid1.Cells[j,i]);
   end;

  if flag then
   begin
   t1:=UpDown3.Position;
   t2:=UpDown4.Position;
   flag1:=0;
  proverka (a,n,m,t1,t2,n1,m1,flag1);
  if flag1>0 then begin
  t3:=UpDown3.Position;
   t4:=UpDown4.Position;
  poisk(a,flag1,n1,m1,n,m,t1,t2,t3,t4,n3,m3);

  Label3.Caption:='max='+inttostr(a[n3-1,m3-1])+' rasspolozen na'+inttostr(n3)+' '+inttostr(m3);
  end
  else begin
  if flag1=-1 then Label3.Caption:='нет чисел входяших в диапозон до 1 четного';
  if flag1=-3 then Label3.Caption:='нет чисел входяших в диапозон и четного';
    if flag1=-2 then Label3.Caption:='нет четного';
  end;
  end
  else
   Label3.Caption:='Не решалась';

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
StringGrid1.rowCount := UpDown1.Position+1;
StringGrid1.Cells[0,UpDown1.Position]:=IntToStr(UpDown1.Position);
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
StringGrid1.ColCount := UpDown2.Position+1;
StringGrid1.Cells[UpDown2.Position,0]:=IntToStr(UpDown2.Position);
end;

procedure TForm1.Edit3Change(Sender: TObject);
var prob_b: real;
begin
  try
    prob_b:=StrToFloat(Edit3.Text);

    if  ((prob_b)<0) or ((prob_b)>StrToFloat(Edit4.Text))  then
    begin
      ShowMessage('C должно быть меньше D');
      Edit3.Text:='0';
    end;
  except
    ShowMessage('C - не число ');
   Edit3.Text:='0';
    Edit2.Text:='1';

end;
end;

procedure TForm1.Edit4Change(Sender: TObject);
var prob_b: real;
begin
  try
    prob_b:=StrToFloat(Edit4.Text);

    if  (prob_b)<StrToFloat(Edit3.Text)  then
    begin
      ShowMessage('D должно быть больше C');
      Edit2.Text:='1';
      Edit3.Text:='0';
    end;
  except
    ShowMessage('D - не число ');
    Edit2.Text:='1';
    Edit3.Text:='0';
  end ;
end;

procedure TForm1.FormCreate(Sender: TObject);
var i: byte;
begin
  StringGrid1.Cells[0,0]:='#';
for i:=1 to StringGrid1.ColCount-1 do
    StringGrid1.Cells[i,0]:=IntToStr(i);
for i:=1 to StringGrid1.RowCount-1 do
    StringGrid1.Cells[0,i]:=IntToStr(i);
end;

end.

