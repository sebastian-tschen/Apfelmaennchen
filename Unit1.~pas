unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ColorGrd, ExtDlgs;

type 
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Elr: TEdit;
    Eoi: TEdit;
    Err: TEdit;
    Eui: TEdit;
    Efarbfk: TEdit;
    Emax_iter: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    Efarbe: TEdit;
    Button4: TButton;
    ColorDialog1: TColorDialog;
    Button5: TButton;
    Button6: TButton;
    CheckBox1: TCheckBox;
    Ef1: TEdit;
    Ef2: TEdit;
    Button7: TButton;
    Image2: TImage;
    Eendf: TEdit;
    Button9: TButton;
    SavePictureDialog1: TSavePictureDialog;
    Button10: TButton;
    Image3: TImage;
    Button11: TButton;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Eumkehr: TEdit;
    Label3: TLabel;
    CheckBox4: TCheckBox;
    Ef3: TEdit;
    Button12: TButton;
    CheckBox5: TCheckBox;
    Button8: TButton;
    Button13: TButton;
    CheckBox6: TCheckBox;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  zoomx1, zoomx2, zoomy1, zoomy2, zoomtmp, fconst,dr, dg, db,d1r,d1g,d1b,d2r,d2g,d2b,d3r,d3g,d3b,f1r,f1g,f1b,f2r,f2g,f2b,f3r,f3g,f3b,umkehr3, umkehr2 : integer;
  Form1: TForm1;
  function farbe(i, faktor, farbconst: integer) : integer;
  function farbe2(iter,max_iter: integer) : integer;
  function farbe3(iter,umkehr: integer) : integer;
  function farbe4(iter,umkehr: integer) : integer;
  function farbe5(iter,umkehr: integer; x1,x2,x3,y1,y2,y3,m1,m2,m3: real) : integer;

implementation

{$R *.dfm}
function farbe (i,faktor,farbconst: integer) : integer;
var
r,g,b :integer;
begin


i:= trunc(i*faktor)+farbconst;

i:= i mod 1536;

if i>255 then
begin
r:= (255-(i mod 256));
g:=255;
b:=0;
end
else
begin
r:= 255;
g:= i;
b:= 0;
end;

if i>511 then
begin
r:=0;
g:=255;
b:= (i mod 512);
end;

if i>767 then
begin
r:=0 ;
g:= (255-(i mod 768));
b:=255 ;
end;

if i>1023 then
begin
r:=(i mod 1024);
g:=0;
b:= 255;
end;

if i>1279 then
begin
r:=255;
g:=0;
b:=(255-(i mod 1280));;
end;

farbe := strtoint('$' + inttohex(r,2) + inttohex(g,2) + inttohex(b,2));




end;
function farbe2(iter,max_iter: integer) : integer;
var r, g, b: integer;
begin

r := trunc((iter/max_iter)*dr)+f1r;
g := trunc((iter/max_iter)*dg)+f1g;
b := trunc((iter/max_iter)*db)+f1b;


farbe2 := strtoint('$' + inttohex(b,2) + inttohex(g,2) + inttohex(r,2));

end;

function farbe3(iter,umkehr: integer) : integer;
var r, g, b: integer;
begin
umkehr2 := umkehr*2;
iter := iter mod umkehr2;
if iter <=umkehr then
  begin
  r := trunc((iter/umkehr)*dr)+f1r;
  g := trunc((iter/umkehr)*dg)+f1g;
  b := trunc((iter/umkehr)*db)+f1b;
end;
if iter >umkehr then
  begin
  r := trunc(((umkehr2-iter)/umkehr)*dr)+f1r;
  g := trunc(((umkehr2-iter)/umkehr)*dg)+f1g;
  b := trunc(((umkehr2-iter)/umkehr)*db)+f1b;
  end;


farbe3 := strtoint('$' + inttohex(b,2) + inttohex(g,2) + inttohex(r,2));

end;

function farbe4(iter,umkehr: integer) : integer;
var
r, g, b :integer;

begin
iter:=iter mod umkehr3;

if (iter<=umkehr) then
  begin
  r := trunc((iter/umkehr)*d1r)+f1r;
  g := trunc((iter/umkehr)*d1g)+f1g;
  b := trunc((iter/umkehr)*d1b)+f1b;
  end;
if (iter<=umkehr2) and (iter>umkehr) then
  begin

  r := trunc(((iter-umkehr)/umkehr)*d2r)+f2r;
  g := trunc(((iter-umkehr)/umkehr)*d2g)+f2g;
  b := trunc(((iter-umkehr)/umkehr)*d2b)+f2b;
  end;
if (iter<=umkehr3) and (iter>umkehr2) then
  begin
  r := trunc(((iter-umkehr2)/umkehr)*d3r)+f3r;
  g := trunc(((iter-umkehr2)/umkehr)*d3g)+f3g;
  b := trunc(((iter-umkehr2)/umkehr)*d3b)+f3b;
  end;

farbe4 := strtoint('$' + inttohex(b,2) + inttohex(g,2) + inttohex(r,2));

end;


function farbe5(iter,umkehr: integer; x1,x2,x3,y1,y2,y3,m1,m2,m3: real) : integer;
var
rot,gruen,blau : integer;
cosw,sinw : real;
begin
  cosw := cos((2*Pi*iter)/umkehr);
  sinw := sin((2*Pi*iter)/umkehr);
  rot := abs(trunc(sinw*x1+cosw*y1+m1));
  gruen := abs(trunc(sinw*x2+cosw*y2+m2));
  blau := abs(trunc(sinw*x3+cosw*y3+m3));

  farbe5 := strtoint('$' + inttohex(blau,2) + inttohex(gruen,2) + inttohex(rot,2)); 
   {farbe5 := $00FFFFFF;}
end;


procedure TForm1.Button1Click(Sender: TObject);

var
LeinBreite, LeinHoehe, Px, Py, max_iter, iter,endfarbe,umkehr, f1, f2, f3,a1,a2,a3,b1,b2,b3,r1,r2,r3,ot1,ot2,ot3,iterlog : Integer;
rr, lr, ui, oi, dX, dY, cx, cy, Zy, Zx, tmp : extended;
x1,x2,x3,y1,y2,y3,c1,c2,c3,d1,d2,d3,m1,m2,m3,s,r,logwert :real;

begin
with Image1 do begin
   canvas.create;
   canvas.FloodFill(1,1,$00FFFFF1,fsBorder);
   canvas.FloodFill(1,1,$00FFFFFF,fsBorder);
   {INIT}

   LeinBreite := Image1.Width;
   LeinHoehe := Image1.Height;
   endfarbe := strtoint(Eendf.Text);
   umkehr := strtoint(Eumkehr.Text);

   rr := strtofloat(Err.Text);
   lr := strtofloat(Elr.Text);
   ui := strtofloat(Eui.Text);
   oi := strtofloat(Eoi.Text);

   dX := (rr - lr)/LeinBreite;
   dY := (oi - ui)/LeinHoehe;

   Px := 0;
   Py := 0;
   cx := lr;
   cy := oi;
   max_iter := strtoint(Emax_iter.Text);
   iter := 1;
   Zx := 0;
   Zy := 0;
   if (CheckBox1.checked = true) or (CheckBox2.checked = true) or (checkbox4.checked = true) or (checkbox5.checked = true)then
    begin

    f1 := strtoint(Ef1.Text);
    f2 := strtoint(Ef2.text);
    f3 := strtoint(Ef3.Text);

    f1r := $000000FF and f1;
    f1g := trunc(($0000FF00 and f1)/256);
    f1b := trunc(($00FF0000 and f1)/65536);



    f2r := $000000FF and f2;
    f2g := trunc(($0000FF00 and f2)/256);
    f2b := trunc(($00FF0000 and f2)/65536);

    dr:= f2r-f1r;
    dg:= f2g-f1g;
    db:= f2b-f1b;
    umkehr2:= umkehr*2;


    end;
    if (checkbox4.checked = true) then
      begin
      f3r := $000000FF and f3;
      f3g := trunc(($0000FF00 and f3)/256);
      f3b := trunc(($00FF0000 and f3)/65536);

      d1r:= f2r-f1r;
      d1g:= f2g-f1g;
      d1b:= f2b-f1b;

      d2r:= f3r-f2r;
      d2g:= f3g-f2g;
      d2b:= f3b-f2b;

      d3r:= f1r-f3r;
      d3g:= f1g-f3g;
      d3b:= f1b-f3b;

      umkehr3 := umkehr*3;

      end;
   if (checkbox5.Checked = true) then
      begin
      f3r := $000000FF and f3;
      f3g := trunc(($0000FF00 and f3)/256);
      f3b := trunc(($00FF0000 and f3)/65536);

      {mittelpunktbestimmung}

      
       {erste winkelhalbierende}

      a1 := f2r-f1r;
      a2 := f2g-f1g;
      a3 := f2b-f1b;

      b1 := f3r-f1r;
      b2 := f3g-f1g;
      b3 := f3b-f1b;


      y1 := ((sqrt((a1*a1)+(a2*a2)+(a3*a3)))/(sqrt((b1*b1)+(b2*b2)+(b3*b3))))*y1;
      y2 := ((sqrt((a1*a1)+(a2*a2)+(a3*a3)))/(sqrt((b1*b1)+(b2*b2)+(b3*b3))))*y2;
      y3 := ((sqrt((a1*a1)+(a2*x2)+(a3*a3)))/(sqrt((b1*b1)+(b2*b2)+(b3*b3))))*y3;

      y1 := f2r+(0.5*(y1-a1));
      y2 := f2g+(0.5*(y2-a1));
      y3 := f2b+(0.5*(y2-a1));

      x1 := y1-f1r;
      x2 := y2-f1g;
      x3 := y3-f1b;

      c1 := (f1r);
      c2 := (f1g);
      c3 := (f1b);
       {zweite winkelhalbierende}
      a1 := f3r-f2r;
      a2 := f3g-f2g;
      a3 := f3b-f2b;

      b1 := f1r-f2r;
      b2 := f1g-f2g;
      b3 := f1b-f2b;

      y1 := ((sqrt((a1*a1)+(a2*a2)+(a3*a3)))/(sqrt((b1*b1)+(b2*b2)+(b3*b3))))*y1;
      y2 := ((sqrt((a1*a1)+(a2*a2)+(a3*a3)))/(sqrt((b1*b1)+(b2*b2)+(b3*b3))))*y2;
      y3 := ((sqrt((a1*a1)+(a2*x2)+(a3*a3)))/(sqrt((b1*b1)+(b2*b2)+(b3*b3))))*y3;

      y1 := f3r+(0.5*(y1-a1));
      y2 := f3g+(0.5*(y2-a1));
      y3 := f3b+(0.5*(y2-a1));

      d1 := (f2r);
      d2 := (f2g);
      d3 := (f2b);

      
      y1 := y1-f2r;
      y2 := y2-f2g;
      y3 := y3-f2b;

      c1 := d1-c1;
      c2 := d2-c2;
      c3 := d3-c3;

      {schnittpunktbestimmung}
      if (x1*y2 <> x2*y1) then
      begin

        s:=(x2*c2-x1*c2)/((y2*x1)-(y1*x2));
        r:=((s*y1+c1)/x1);
      end
      else if (x1*y3 <> x3*y1) then
      begin

        s:=(x3*c3-x1*c3)/((y3*x1)-(y1*x3));
        r:=((s*y1+c1)/x1);

      end
      else if (x2*y3 <> x3*y2) then
      begin    

        s:=(x3*c3-x2*c3)/((y3*x2)-(y2*x3));
        r:=((s*y2+c1)/x2);

      end;

      m1:=(s*y1)+d1;
      m2:=(s*y2)+d2;
      m3:=(s*y3)+d3;

      
      {//schnittpunktbestimmung}
      {mittelpunkt bestimmt, radiusvektoren bestimmen}


      x1 := f2r-m1;
      x2 := f2g-m2;
      x3 := f2b-m3;

      y1 := (x2*ot3)-(x3*ot2);
      y2 := (x3*ot1)-(x1*ot3);
      y3 := (x1*ot2)-(x2*ot1);

      y1 := ((sqrt((x1*x1)+(x2*x2)+(x3*x3)))/(sqrt((y1*y1)+(y2*y2)+(y3*y3))))*y1;
      y2 := ((sqrt((x1*x1)+(x2*x2)+(x3*x3)))/(sqrt((y1*y1)+(y2*y2)+(y3*y3))))*y2;
      y3 := ((sqrt((x1*x1)+(x2*x2)+(x3*x3)))/(sqrt((y1*y1)+(y2*y2)+(y3*y3))))*y3;
      end;


   for Px := 0 to (LeinBreite-1) do
    begin
    cy := oi;
    for Py := 0 to (LeinHoehe-1) do
      begin
      Zx := 0;
      Zy := 0;
      iter := 0;
      while (iter<=max_iter) and (Zx*Zx + Zy*Zy <=4) do
        begin
        tmp:=Zx;
        Zx := (Zx*Zx)-(Zy*Zy)+cx;
        Zy := 2*tmp*Zy+cy;
        inc(iter);
        end;
        iterlog := iter;
        if (Checkbox6.Checked = true) then
        begin
          logwert := strtofloat(Edit1.text);
          iterlog := trunc(ln(iterlog)/ln(logwert));
          inc(iterlog);
          end;
        if (CheckBox1.checked = true) then
          begin

          Canvas.Pixels[Px,Py] := farbe2(iterlog-1,max_iter)

          end;
          if (CheckBox3.checked = true) then

          Canvas.Pixels[Px,Py] := farbe(iterlog,strtoint(Efarbfk.Text),fconst);          begin

          end;

          if (CheckBox2.checked = true) then

          Canvas.Pixels[Px,Py] := farbe3(iterlog-1,umkehr);          begin

          end;

          if (CheckBox4.checked = true) then

          Canvas.Pixels[Px,Py] := farbe4(iterlog-1,umkehr);          begin

          end;

          if (CheckBox5.checked = true) then

          Canvas.Pixels[Px,Py] := farbe5(iterlog-1,umkehr,x1,x2,x3,y1,y2,y3,m1,m2,m3);          begin

          end;

      if (iter = max_iter+1) Then
        begin
        Canvas.Pixels[Px,Py] := endfarbe;
        end;
      cy := cy-dY
      end;
    cx := cx+dX
    end;



   end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Eoi.Text := floattostr(((Image1.Height/Image1.Width)*(strtofloat(Err.Text)-strtofloat(Elr.Text)))+strtofloat(Eui.Text));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Eui.Text := floattostr(strtofloat(Eoi.Text)-((Image1.Height/Image1.Width)*(strtofloat(Err.Text)-strtofloat(Elr.Text))));
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

zoomx1 := X;
zoomy1 := Y;


end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var
  rr, lr, oi, ui, LeinBreite, LeinHoehe, dX, dY : extended;
begin

zoomx2 := X;
zoomy2 := Y;

if (zoomx1>zoomx2) then
  begin
  zoomtmp := zoomx1;
  zoomx1 := zoomx2;
  zoomx2 := zoomtmp;
  end;

if (zoomy1>zoomy2) then
  begin
  zoomtmp := zoomy1;
  zoomy1 :=zoomy2;
  zoomy2 := zoomtmp;
  end;
with Image1 do
  begin
  Canvas.Pen.Color := $00FFFFFF;
  Canvas.MoveTo(zoomx1,zoomy1);
  Canvas.LineTo(zoomx2,zoomy1);
  Canvas.LineTo(zoomx2,zoomy2);
  Canvas.LineTo(zoomx1,zoomy2);
  Canvas.Lineto(zoomx1,zoomy1);
  end;
   LeinBreite := Image1.Width;
   LeinHoehe := Image1.Height;

   rr := strtofloat(Err.Text);
   lr := strtofloat(Elr.Text);
   ui := strtofloat(Eui.Text);
   oi := strtofloat(Eoi.Text);

   dX := (rr - lr)/LeinBreite;
   dY := (oi - ui)/LeinHoehe;

  Eoi.text := floattostr(oi-zoomy1*dY);
  Elr.Text := floattostr(lr+zoomx1*dX);
  Err.Text := floattostr(rr-(Image1.Width-zoomx2)*dX);
  Eui.Text := floattostr(strtofloat(Eoi.Text)-((Image1.Height/Image1.Width)*(strtofloat(Err.Text)-strtofloat(Elr.Text))));


end;

procedure TForm1.Button4Click(Sender: TObject);
var
diffX, diffY, rr, lr, oi, ui : extended;
begin



   rr := strtofloat(Err.Text);
   lr := strtofloat(Elr.Text);
   ui := strtofloat(Eui.Text);
   oi := strtofloat(Eoi.Text);
diffY := oi-ui;
diffX := rr-lr;
Eoi.Text := floattostr(oi+diffY);
Eui.Text := floattostr(ui-diffY);
Err.Text := floattostr(rr+diffX);
Elr.Text := floattostr(lr-diffX);

Button1.Click;


end;

procedure TForm1.Button5Click(Sender: TObject);
var
f1, f2,iter,max_iter,Py : integer;

begin

Colordialog1.Execute;

Ef1.Text:=inttostr(colordialog1.color);

    f1 := strtoint(Ef1.Text);
    f2 := strtoint(Ef2.text);

    f1r := $000000FF and f1;
    f1g := trunc(($0000FF00 and f1)/256);
    f1b := trunc(($00FF0000 and f1)/65536);



    f2r := $000000FF and f2;
    f2g := trunc(($0000FF00 and f2)/256);
    f2b := trunc(($00FF0000 and f2)/65536);

    dr:= f2r-f1r;
    dg:= f2g-f1g;
    db:= f2b-f1b;

    max_iter := 250;


with image2 do
  begin
  for iter := 0 to 250 do
    begin
    for Py := 0 to 52 do
      begin
      Canvas.Pixels[iter,Py] := farbe2(iter,max_iter+1)
      end;
    end;
  end;


end;

procedure TForm1.Button6Click(Sender: TObject);
var
i: integer;
begin
i:=0;
while (i>=0) and (i<=1536) and (farbe(i,1,0)<>strtoint(Efarbe.Text))  do
  begin
  inc(i);
  end;
fconst:=i;

end;

procedure TForm1.Button7Click(Sender: TObject);

var
f1, f2,iter,max_iter,Py : integer;

begin

Colordialog1.Execute;

Ef2.Text:=inttostr(colordialog1.color);

    f1 := strtoint(Ef1.Text);
    f2 := strtoint(Ef2.text);

    f1r := $000000FF and f1;
    f1g := trunc(($0000FF00 and f1)/256);
    f1b := trunc(($00FF0000 and f1)/65536);



    f2r := $000000FF and f2;
    f2g := trunc(($0000FF00 and f2)/256);
    f2b := trunc(($00FF0000 and f2)/65536);

    dr:= f2r-f1r;
    dg:= f2g-f1g;
    db:= f2b-f1b;

    max_iter := 250;


with image2 do
  begin
  for iter := 0 to 250 do
    begin
    for Py := 0 to 52 do
      begin
      Canvas.Pixels[iter,Py] := farbe2(iter,max_iter+1)
      end;
    end;
  end;

end;


procedure TForm1.Button9Click(Sender: TObject);
begin
Colordialog1.Execute;

Eendf.Text:=inttostr(colordialog1.color);
end;

procedure TForm1.Button10Click(Sender: TObject);
var
  saveImage: TBitmap;
begin
with image3 do
begin

  if SavePictureDialog1.Execute then begin
    saveImage := TBitmap.Create;
    saveImage.width := Image3.Width;
    saveImage.height := Image3.Height;
    saveImage.pixelFormat := image3.Picture.Bitmap.PixelFormat;

    saveImage := Image3.picture.Bitmap;

{saveImage.pixelFormat := image1.Picture.Bitmap.PixelFormat;
    saveImage.canvas.copyrect(
      RECT(0, 0, 640, 400),
      image1.canvas,
      RECT(-image1.left, -image1.top, saveImage.width-image1.left, saveImage.height-image1.top));  }

    saveImage.saveToFile(SavePictureDialog1.FileName);
    saveImage.Free;
  end;
  end;
end;

procedure TForm1.Button11Click(Sender: TObject);
var
LeinBreite, LeinHoehe, Px, Py, f1,f2, f3,max_iter, iter, iterlog, endfarbe,umkehr: Integer;
rr, lr, ui, oi, dX, dY, cx, cy, Zy, Zx, tmp : extended;
logwert : real;

begin
with Image3 do begin
   canvas.create;
   canvas.FloodFill(1,1,$00FFFFF1,fsBorder);
   canvas.FloodFill(1,1,$00FFFFFF,fsBorder);
   {INIT}

   LeinBreite := Image3.Width;
   LeinHoehe := Image3.Height;
   endfarbe := strtoint(Eendf.Text);
   umkehr := strtoint(Eumkehr.Text);

   rr := strtofloat(Err.Text);
   lr := strtofloat(Elr.Text);
   ui := strtofloat(Eui.Text);
   oi := strtofloat(Eoi.Text);

   dX := (rr - lr)/LeinBreite;
   dY := (oi - ui)/LeinHoehe;

   Px := 0;
   Py := 0;
   cx := lr;
   cy := oi;
   max_iter := strtoint(Emax_iter.Text);
   iter := 1;
   Zx := 0;
   Zy := 0;
   if (CheckBox1.checked = true) or (CheckBox2.checked = true) or (checkbox4.checked = true)then
    begin

    f1 := strtoint(Ef1.Text);
    f2 := strtoint(Ef2.text);
    f3 := strtoint(Ef3.Text);

    f1r := $000000FF and f1;
    f1g := trunc(($0000FF00 and f1)/256);
    f1b := trunc(($00FF0000 and f1)/65536);



    f2r := $000000FF and f2;
    f2g := trunc(($0000FF00 and f2)/256);
    f2b := trunc(($00FF0000 and f2)/65536);

    dr:= f2r-f1r;
    dg:= f2g-f1g;
    db:= f2b-f1b;
    umkehr2:= umkehr*2;


    end;
    if (checkbox4.checked = true) then
      begin
      f3r := $000000FF and f3;
      f3g := trunc(($0000FF00 and f3)/256);
      f3b := trunc(($00FF0000 and f3)/65536);

      d1r:= f2r-f1r;
      d1g:= f2g-f1g;
      d1b:= f2b-f1b;

      d2r:= f3r-f2r;
      d2g:= f3g-f2g;
      d2b:= f3b-f2b;

      d3r:= f1r-f3r;
      d3g:= f1g-f3g;
      d3b:= f1b-f3b;

      umkehr3 := umkehr*3;

      end;

   for Px := 0 to (LeinBreite-1) do
    begin
    cy := oi;
    for Py := 0 to (LeinHoehe-1) do
      begin
      Zx := 0;
      Zy := 0;
      iter := 0;
      while (iter<=max_iter) and (Zx*Zx + Zy*Zy <=4) do
        begin
        tmp:=Zx;
        Zx := (Zx*Zx)-(Zy*Zy)+cx;
        Zy := 2*tmp*Zy+cy;
        inc(iter);
        end;
        iterlog := iter;
        if (Checkbox6.Checked = true) then
        begin
          logwert := strtofloat(Edit1.text);
          iterlog := trunc(ln(iterlog)/ln(logwert));
          inc(iterlog);
          end;
        if (CheckBox1.checked = true) then
          begin

          Canvas.Pixels[Px,Py] := farbe2(iterlog-1,max_iter)

          end;
          if (CheckBox3.checked = true) then

          Canvas.Pixels[Px,Py] := farbe(iterlog,strtoint(Efarbfk.Text),fconst);          begin

          end;

          if (CheckBox2.checked = true) then

          Canvas.Pixels[Px,Py] := farbe3(iterlog-1,umkehr);          begin

          end;
          if (CheckBox4.checked = true) then

          Canvas.Pixels[Px,Py] := farbe4(iterlog-1,umkehr);          begin

          end;

      if (iter = max_iter+1) Then
        begin
        Canvas.Pixels[Px,Py] := endfarbe;
        end;
      cy := cy-dY
      end;
    cx := cx+dX
    end;



   end;
end;


procedure TForm1.Button12Click(Sender: TObject);
begin
Colordialog1.Execute;

Ef3.Text:=inttostr(colordialog1.color);
end;

procedure TForm1.Button8Click(Sender: TObject);

var
LeinBreite, LeinHoehe, Px, Py, max_iter, max_farbe, iter,iter2,endfarbe,umkehr, f1, f2, f3,a1,a2,a3,b1,b2,b3,r1,r2,r3,ot1,ot2,ot3,xtmp,ytmp : Integer;
rr, lr, ui, oi, dX, dY, cx, cy, Zy, Zx, tmp : extended;
x1,x2,x3,y1,y2,y3,c1,c2,c3,d1,d2,d3,m1,m2,m3,s,r :real;
kleinBildmatrix: array[0..639] of array[0..399] of Integer;

begin

for iter := 0 to 639 do
begin
  for iter2 := 0 to 399 do
  begin
    kleinBildmatrix[iter,iter2]:=0;
  end;
end;
    f1 := strtoint(Ef1.Text);
    f2 := strtoint(Ef2.text);
    f3 := strtoint(Ef3.Text);

    f1r := $000000FF and f1;
    f1g := trunc(($0000FF00 and f1)/256);
    f1b := trunc(($00FF0000 and f1)/65536);



    f2r := $000000FF and f2;
    f2g := trunc(($0000FF00 and f2)/256);
    f2b := trunc(($00FF0000 and f2)/65536);

    dr:= f2r-f1r;
    dg:= f2g-f1g;
    db:= f2b-f1b;
    umkehr2:= umkehr*2;



with Image1 do begin
   canvas.create;
   canvas.FloodFill(1,1,$00FFFFF1,fsBorder);
   canvas.FloodFill(1,1,$00FFFFFF,fsBorder);
   {INIT}

   LeinBreite := Image1.Width;
   LeinHoehe := Image1.Height;
   endfarbe := strtoint(Eendf.Text);
   umkehr := strtoint(Eumkehr.Text);

   rr := strtofloat(Err.Text);
   lr := strtofloat(Elr.Text);
   ui := strtofloat(Eui.Text);
   oi := strtofloat(Eoi.Text);

   dX := (rr - lr)/LeinBreite;
   dY := (oi - ui)/LeinHoehe;

   Px := 0;
   Py := 0;
   cx := lr;
   cy := oi;
   max_iter := strtoint(Emax_iter.Text);
   iter := 1;
   Zx := 0;
   Zy := 0;


    max_farbe:= 0;

   for Px := 0 to (LeinBreite-1) do
    begin
    cy := oi;
    for Py := 0 to (LeinHoehe-1) do
      begin
      Zx := 0;
      Zy := 0;
      iter := 0;
      while (iter<=max_iter) and (Zx*Zx + Zy*Zy <=4) do
        begin
        tmp:=Zx;
        Zx := (Zx*Zx)-(Zy*Zy)+cx;
        Zy := 2*tmp*Zy+cy;
        xtmp:=trunc((Zx-lr)/dX);
        ytmp:=trunc((Zy-ui)/dY);
        if (xtmp>=0) and (xtmp<=639) and (ytmp<=399) and (ytmp>=0) then
        begin
        inc(kleinBildmatrix[xtmp,ytmp]);
        if max_farbe<kleinBildmatrix[xtmp,ytmp] then
        begin
        max_farbe:=kleinBildmatrix[xtmp,ytmp]
        end;
        end;
        inc(iter);
        end;

      cy := cy-dY
      end;
    cx := cx+dX
    end;
    max_farbe:=trunc(ln(max_farbe));
  for iter := 0 to 639 do
  begin
    for iter2 := 0 to 399 do
    begin
    {Canvas.Pixels[iter,iter2] := farbe(kleinBildmatrix[iter,iter2],strtoint(Efarbfk.Text),0);}
    Canvas.Pixels[iter,iter2] := farbe2(trunc(ln(kleinBildmatrix[iter,iter2]+1)),max_farbe+1);
    end;
  end;



   end;
end;

procedure TForm1.Button13Click(Sender: TObject);
var
LeinBreite, LeinHoehe, Px, Py, max_iter, max_farbe, iter,iter2,endfarbe,umkehr, f1, f2, f3,a1,a2,a3,b1,b2,b3,r1,r2,r3,ot1,ot2,ot3,xtmp,ytmp : Integer;
rr, lr, ui, oi, dX, dY, cx, cy, Zy, Zx, tmp : extended;
x1,x2,x3,y1,y2,y3,c1,c2,c3,d1,d2,d3,m1,m2,m3,s,r :real;

begin


    f1 := strtoint(Ef1.Text);
    f2 := strtoint(Ef2.text);
    f3 := strtoint(Ef3.Text);

    f1r := $000000FF and f1;
    f1g := trunc(($0000FF00 and f1)/256);
    f1b := trunc(($00FF0000 and f1)/65536);



    f2r := $000000FF and f2;
    f2g := trunc(($0000FF00 and f2)/256);
    f2b := trunc(($00FF0000 and f2)/65536);

    dr:= f2r-f1r;
    dg:= f2g-f1g;
    db:= f2b-f1b;
    umkehr2:= umkehr*2;



with Image3 do begin
   canvas.create;
   canvas.FloodFill(1,1,$00FFFFF1,fsBorder);
   canvas.FloodFill(1,1,$00000000,fsBorder);
   {INIT}

   LeinBreite := Image3.Width;
   LeinHoehe := Image3.Height;
   endfarbe := strtoint(Eendf.Text);
   umkehr := strtoint(Eumkehr.Text);

   rr := strtofloat(Err.Text);
   lr := strtofloat(Elr.Text);
   ui := strtofloat(Eui.Text);
   oi := strtofloat(Eoi.Text);

   dX := (rr - lr)/LeinBreite;
   dY := (oi - ui)/LeinHoehe;

   Px := 0;
   Py := 0;
   cx := lr;
   cy := oi;
   max_iter := strtoint(Emax_iter.Text);
   iter := 1;
   Zx := 0;
   Zy := 0;


    max_farbe:= 0;

   for Px := 0 to (LeinBreite-1) do
    begin
    cy := oi;
    for Py := 0 to (LeinHoehe-1) do
      begin
      Zx := 0;
      Zy := 0;
      iter := 0;
      while (iter<=max_iter) and (Zx*Zx + Zy*Zy <=4) do
        begin
        tmp:=Zx;
        Zx := (Zx*Zx)-(Zy*Zy)+cx;
        Zy := 2*tmp*Zy+cy;
        xtmp:=trunc((Zx-lr)/dX);
        ytmp:=trunc((Zy-ui)/dY);
        if (xtmp>=0) and (xtmp<=1279) and (ytmp<=799) and (ytmp>=0) then
        begin
        Canvas.Pixels[xtmp,ytmp]:= Canvas.Pixels[xtmp,ytmp]+1;
        end;
        inc(iter);
        end;

      cy := cy-dY
      end;
    cx := cx+dX
    end;



   end;
end;

end.
