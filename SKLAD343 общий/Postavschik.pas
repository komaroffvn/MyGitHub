unit Postavschik;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, IniFiles;

type
  TForm10 = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1IDpost: TAutoIncField;
    ADOTable1postName: TWideStringField;
    ADOTable1phone: TWideStringField;
    ADOTable1address: TWideStringField;
    ADOTable1kontakty: TWideStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  Ini: TIniFile;

implementation

{$R *.dfm}

//Подключение к БД из ini файла
procedure TForm10.FormCreate(Sender: TObject);
var put : string;
begin
  Ini:= TIniFile.Create(ExtractFilePath(ParamStr(0))+'setting.ini');
  put:= Ini.ReadString('Путь к БД','ConStr','');
  Ini.Free;
    if put=''
    then
    MessageDlg('Файл БД не найден',mtError,[mbOk],0)
    else
     begin
      Form10.ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+put+';Persist Security Info=False;';
      Form10.ADOConnection1.Open();
      Form10.ADOConnection1.Connected:=true;
      Form10.ADOTable1.Active:= true;
     end;
end;

end.
