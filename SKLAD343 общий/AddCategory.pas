unit AddCategory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, IniFiles,
  Data.Win.ADODB;

type
  TForm5 = class(TForm)
    DBEdit1: TDBEdit;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  Ini : TIniFile;
implementation

uses sklad343;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
  If Form1.CategoryADOQuery1.Modified then Form1.CategoryADOQuery1.Post;
If Form5.ADOQuery1.Modified then Form5.ADOQuery1.Post;
  Form5.Close;
end;

procedure TForm5.FormCreate(Sender: TObject);
 var put1 : string;
 begin
  Ini:= TIniFile.Create(ExtractFilePath(ParamStr(0))+'setting.ini');
  put1:= Ini.ReadString('Путь к БД','ConStr','');
  Ini.Free;
    if put1=''
    then
    MessageDlg('Файл БД не найден',mtError,[mbOk],0)
    else
     begin
      Form5.ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+put1+';Persist Security Info=False;';
      Form5.ADOConnection1.Open();
      Form5.ADOConnection1.Connected:=true;
      Form5.ADOQuery1.Active:= true;
     end;
end;

end.
