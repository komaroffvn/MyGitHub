unit zastavka;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Timer1: TTimer;
    Label1: TLabel;
    procedure FormPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    BmpImage: TBitMap;
  end;

var
  Form3: TForm3;
  aRect: TRect;

implementation

{$R *.dfm}

procedure TForm3.FormPaint(Sender: TObject);
begin
 Form3.BmpImage := TBitMap.Create;
 Form3.BmpImage.LoadFromFile('sklad.bmp');
 aRect := Rect(0,0,500,285);
 Form3.Canvas.StretchDraw(aRect, Form3.BmpImage);
end;

procedure TForm3.FormDestroy(Sender: TObject);
begin
 BmpImage.Destroy;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
 Timer1.Enabled := false;
end;

end.
