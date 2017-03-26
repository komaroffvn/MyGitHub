unit rashod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Menus, IniFiles, UITypes;

type
  TForm7 = class(TForm)
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    PrintDialog1: TPrintDialog;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    ADOQuery1tovName: TWideStringField;
    ADOQuery1date_rashod: TDateTimeField;
    ADOQuery1summ: TBCDField;
    ADOQuery1comments: TWideStringField;
    ADOQuery1counts: TIntegerField;
    ADOQuery1tovar_id: TAutoIncField;
    N3: TMenuItem;
    N4: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    procedure N2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  Ini : TIniFile;
implementation

{$R *.dfm}

uses sklad343, AllProduction, RedaktRashod;



procedure TForm7.Button1Click(Sender: TObject);
begin
  Form7.DBGrid1.Font.Height:=-16;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  Form7.DBGrid1.Font.Height:=-13;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.OstatokADOQuery3.Close; //���������� ������ �����1 ����� �������� ����� ������
  Form1.RashodADOQuery4.Close;
  Form1.ProductionADOQuery2.Close;
  Form1.OstatokADOQuery3.Open;
  Form1.ProductionADOQuery2.Open;
  Form1.RashodADOQuery4.Open;
end;


//����������� �� �� ini �����
procedure TForm7.FormCreate(Sender: TObject);
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
      Form7.ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+put+';Persist Security Info=False;';
      Form7.ADOConnection1.Open();
      Form7.ADOConnection1.Connected:=true;
      Form7.ADOQuery1.Active:= true;
     end;
end;

//�������
procedure TForm7.N2Click(Sender: TObject);
begin
  Form7.Print;
end;

//������ �������������
procedure TForm7.N3Click(Sender: TObject);
begin
 Form9.Show;
end;

//������ ������� �� ������
procedure TForm7.N4Click(Sender: TObject);
begin
 Form7.ADOQuery1.Delete;
end;

end.
