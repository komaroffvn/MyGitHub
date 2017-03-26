unit ostatok;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids, IniFiles, UITypes, Vcl.Menus;

type
  TForm8 = class(TForm)
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1tovName: TWideStringField;
    ADOQuery1Sumcounts: TFloatField;
    ADOQuery1counts: TIntegerField;
    ADOQuery1Expr1003: TFloatField;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  Ini: TIniFile;
implementation

uses AddProduction, AllProduction, zastavka, Unit4, AddCategory, Unit6, rashod, sklad343, RedaktRashod,
  report;

{$R *.dfm}

//��������� ����� ���������
procedure TForm8.Button1Click(Sender: TObject);
begin
  Form8.DBGrid1.Font.Height:=-16;
end;

//��������� ����� ���������
procedure TForm8.Button2Click(Sender: TObject);
begin
  Form8.DBGrid1.Font.Height:=-13;
end;

//����������� � �����
procedure TForm8.FormCreate(Sender: TObject);
var put : string;
 begin
  Ini:= TIniFile.Create(ExtractFilePath(ParamStr(0))+'setting.ini');
  put:= Ini.ReadString('���� � ��','ConStr','');
  Ini.Free;
    if put=''
    then
    MessageDlg('���� �� �� ������',mtError,[mbOk],0)
    else
     begin
      Form8.ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+put+';Persist Security Info=False;';
      Form8.ADOConnection1.Open();
      Form8.ADOConnection1.Connected:=true;
      Form8.ADOQuery1.Active:= true;
     end;

 end;

 //������
procedure TForm8.N3Click(Sender: TObject);
begin
 Form8.Print;
end;

end.


