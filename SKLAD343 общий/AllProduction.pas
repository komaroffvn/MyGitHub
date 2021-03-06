unit AllProduction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, Menus, IniFiles, UITypes, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    PrintDialog1: TPrintDialog;
    ADOQuery1: TADOQuery;
    ADOQuery1tovar_id: TAutoIncField;
    ADOQuery1tovName: TWideStringField;
    ADOQuery1screenshots: TBlobField;
    ADOQuery1project_begin: TDateTimeField;
    ADOQuery1price: TBCDField;
    ADOQuery1counts: TIntegerField;
    ADOQuery1summa: TBCDField;
    ADOQuery1IDpost: TWideStringField;
    ADOQuery1dogovor: TWideStringField;
    ADOQuery1postName: TWideStringField;
    ADOQuery1catName: TWideStringField;
    ADOQuery1Sum: TIntegerField;
    Button1: TButton;
    Button2: TButton;
    procedure N3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ADOQuery1CalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  Ini : TIniFile;
implementation

{$R *.dfm}
 //�������������� ���� ���������
procedure TForm2.ADOQuery1CalcFields(DataSet: TDataSet);
begin
 ADOQuery1Sum.AsFloat:=ADOQuery1price.AsFloat*ADOQuery1counts.AsInteger;
end;

//��������� ����� ���������
procedure TForm2.Button1Click(Sender: TObject);
begin
  Form2.DBGrid1.Font.Height:=-16;
end;
//��������� ����� ���������
procedure TForm2.Button2Click(Sender: TObject);
begin
  Form2.DBGrid1.Font.Height:=-13;
end;

//����������� �� �� ini �����
procedure TForm2.FormCreate(Sender: TObject);
var put1 : string;
 begin
  Ini:= TIniFile.Create(ExtractFilePath(ParamStr(0))+'setting.ini');
  put1:= Ini.ReadString('���� � ��','ConStr','');
  Ini.Free;
    if put1=''
    then
    MessageDlg('���� �� �� ������',mtError,[mbOk],0)
    else
     begin
      Form2.ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+put1+';Persist Security Info=False;';
      Form2.ADOConnection1.Open();
      Form2.ADOConnection1.Connected:=true;
      Form2.ADOQuery1.Active:= true;
     end;
end;

//�������
procedure TForm2.N3Click(Sender: TObject);
begin
 Form2.Print;
end;

end.
