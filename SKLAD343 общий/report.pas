unit report;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxPreview, frxDBSet,
  frxExportRTF, frxExportPDF;

type
  TForm11 = class(TForm)
    frxDBDataset1: TfrxDBDataset;
    frxPreview1: TfrxPreview;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

uses ostatok;

end.
