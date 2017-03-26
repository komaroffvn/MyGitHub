unit sklad343;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, StdCtrls, Grids, DBGrids, ToolWin, ComCtrls,
  ImgList, Buttons, DB, ADODB, DBCtrls, IniFiles, UITypes, zastavka, Vcl.Mask;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    OpenDialog1: TOpenDialog;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    BtnProductiya: TMenuItem;
    BtnPlus: TMenuItem;
    BtnEdit: TMenuItem;
    BtnDelete: TMenuItem;
    BtnKategory: TMenuItem;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    DBImage1: TDBImage;
    N5: TMenuItem;
    N6: TMenuItem;
    Label1: TLabel;
    N7: TMenuItem;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    N8: TMenuItem;
    N9: TMenuItem;
    CategoryADOQuery1: TADOQuery;
    ProductionADOQuery2: TADOQuery;
    DBEdit1: TDBEdit;
    ProductionADOQuery2project_begin: TDateTimeField;
    ProductionADOQuery2tovar_id: TAutoIncField;
    ProductionADOQuery2tovName: TWideStringField;
    ProductionADOQuery2screenshots: TBlobField;
    ProductionADOQuery2price: TBCDField;
    ProductionADOQuery2counts: TIntegerField;
    ProductionADOQuery2summa: TBCDField;
    ProductionADOQuery2IDpost: TWideStringField;
    ProductionADOQuery2dogovor: TWideStringField;
    ProductionADOQuery2postName: TWideStringField;
    ProductionADOQuery2catName: TWideStringField;
    ProductionADOQuery2Sum: TIntegerField;
    Label2: TLabel;
    CategoryADOQuery1cat_id: TAutoIncField;
    CategoryADOQuery1catName: TWideStringField;
    DataSource3: TDataSource;
    OstatokADOQuery3: TADOQuery;
    DBGrid3: TDBGrid;
    DBEdit2: TDBEdit;
    ProductionADOQuery2Ostat: TStringField;
    Label3: TLabel;
    Button2: TButton;
    Button3: TButton;
    DataSource4: TDataSource;
    RashodADOQuery4: TADOQuery;
    DBGrid4: TDBGrid;
    Label4: TLabel;
    RashodADOQuery4tovName: TWideStringField;
    RashodADOQuery4date_rashod: TDateTimeField;
    RashodADOQuery4summ: TBCDField;
    RashodADOQuery4comments: TWideStringField;
    RashodADOQuery4counts: TIntegerField;
    RashodADOQuery4tovar_id: TAutoIncField;
    DBEdit3: TDBEdit;
    N10: TMenuItem;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BtnPlusClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
  procedure DBEdit1Change(Sender: TObject);
    procedure ProductionADOQuery2CalcFields(DataSet: TDataSet);
    procedure Edit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure N10Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Ini : TIniFile;
  
implementation

uses AddProduction, Postavschik, AllProduction, Unit4, AddCategory, Unit6, rashod,
  ostatok, report;

{$R *.dfm}


//���������� ���������
procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
AddProductionForm.Caption:='�������� ��������� �� �����';
Form1.ProductionADOQuery2.Append;
AddProductionForm.DBEdit4.ReadOnly:=false;
AddProductionForm.Label1.Caption:='������������ ���������';
AddProductionForm.Label1.Color:=clBtnFace;
AddProductionForm.Show;
end;


//����������� � �� �� ini �����
procedure TForm1.FormCreate(Sender: TObject);
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
      Form1.ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+put+';Persist Security Info=False;';
      Form1.ADOConnection1.Open();
      Form1.ADOConnection1.Connected:=true;
      Form1.RashodADOQuery4.Active:= true;
      Form1.OstatokADOQuery3.Active:= true;
      Form1.ProductionADOQuery2.Active:= true;
      Form1.CategoryADOQuery1.Active:= true;
     end;
end;


//����� ������
procedure TForm1.N10Click(Sender: TObject);
begin
  Form11.frxReport1.ShowReport();
  Form11.frxReport1.Print;
end;

//����� ��������
procedure TForm1.N2Click(Sender: TObject);
begin
  Form2.DBGrid1.DataSource.DataSet.Close; //���������� ����� ��� ��������� ����� ���������� ��� �������� ���������
  Form2.DBGrid1.DataSource.DataSet.Open;

  Form11.Show;
  Form11.frxReport1.ShowReport();
end;

//������� ������ � PDF
procedure TForm1.N3Click(Sender: TObject);
begin
  Form7.DBGrid1.DataSource.DataSet.Close;
  Form7.DBGrid1.DataSource.DataSet.Open;

  Form11.frxReport1.ShowReport();
  Form11.frxReport1.Export(Form11.frxPDFExport1);
end;

//������� ������ � RTF
procedure TForm1.N4Click(Sender: TObject);
begin
  Form8.DBGrid1.DataSource.DataSet.Close;
  Form8.DBGrid1.DataSource.DataSet.Open;

  Form11.frxReport1.ShowReport();
  Form11.frxReport1.Export(Form11.frxRTFExport1);
end;

//�������� ���������
procedure TForm1.N5Click(Sender: TObject);
begin
  Form1.CategoryADOQuery1.Append;
  Form5.Show;
end;

//�������� ���������
procedure TForm1.N6Click(Sender: TObject);
begin
  Form1.CategoryADOQuery1.Delete;
end;

//���� ����������� ��� ������
procedure TForm1.N7Click(Sender: TObject);
begin
  Form6.Show;
end;

//���� ����������
procedure TForm1.N8Click(Sender: TObject);
begin
 Form10.Show;
end;

//������ � ���������
procedure TForm1.N9Click(Sender: TObject);
begin
  Form3 := TForm3.Create(Application);
  Form3.Show;
end;

//�������������� ����
procedure TForm1.ProductionADOQuery2CalcFields(DataSet: TDataSet);
begin
 ProductionADOQuery2Sum.AsFloat:=ProductionADOQuery2price.AsFloat*ProductionADOQuery2counts.AsInteger;
end;

//���� ������
procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Form7.DBGrid1.DataSource.DataSet.Close;
  Form7.DBGrid1.DataSource.DataSet.Open;
  Form7.Show;
end;

//��������� ����� ���� ������
procedure TForm1.BitBtn2Click(Sender: TObject);
begin
 Form2.DBGrid1.DataSource.DataSet.Close; //���������� ����� ��� ��������� ����� ���������� ��� �������� ���������
 Form2.DBGrid1.DataSource.DataSet.Open;
 Form2.Show;
end;

//������� ��������� ����� ����
procedure TForm1.BtnDeleteClick(Sender: TObject);
begin
 Form1.ProductionADOQuery2.Delete;
end;

//�������� �������� ����� ������
procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  Form4.Show;
end;

//�������� ���������, ��������
procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  Form7.ADOQuery1.insert;
  Form7.ADOQuery1.FieldByName('tovName').Value := Form1.ProductionADOQuery2.FieldByName('tovName').Value;
  Form7.ADOQuery1.Post;
  Form1.ProductionADOQuery2.Close;
  Form1.ProductionADOQuery2.Open;
  Form7.DBGrid1.DataSource.DataSet.Close;
  Form7.DBGrid1.DataSource.DataSet.Open;
  Form7.Show;
  //Form9.Show;
end;


//��������� ��������� ����� ������
procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  AddProductionForm.Caption:='��������';
  AddProductionForm.DBEdit4.ReadOnly:=true;
  AddProductionForm.Label1.Caption:='������������ ��������� �������� ������!';
  AddProductionForm.Label1.Color:=clRed;
  AddProductionForm.Show;
end;

//���������� ��������� ����� ����
procedure TForm1.BtnPlusClick(Sender: TObject);
begin
 AddProductionForm.Caption:='�������� ��������� �� �����';
 Form1.ProductionADOQuery2.Append;
 AddProductionForm.Show;
end;

//���� �������
procedure TForm1.Button1Click(Sender: TObject);
begin
  Form8.DBGrid1.DataSource.DataSet.Close;
  Form8.DBGrid1.DataSource.DataSet.Open;
  Form8.Show;
end;

//��������� ����� ���������
procedure TForm1.Button2Click(Sender: TObject);
begin
  Form1.DBGrid2.Font.Height:=-16;
end;
//��������� ����� ���������
procedure TForm1.Button3Click(Sender: TObject);
begin
  Form1.DBGrid2.Font.Height:=-13;
end;


//����� ������ ��������� � ������ ���������
procedure TForm1.DBEdit1Change(Sender: TObject);
 var h1, h2: string;
begin
 h1:=''+Form1.DBEdit1.Text;
 h2:=QuotedStr(h1);
 with Form1.ProductionADOQuery2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM tovar WHERE catName like'+h2+' order by tovName');
    Open;
  end;
end;

//����� ������ ������ ��������� � ������ ���������
procedure TForm1.DBEdit3Change(Sender: TObject);
  var k1, k2: string;
begin
 k1:=''+Form1.DBEdit3.Text;
 k2:=QuotedStr(k1);
 with Form1.RashodADOQuery4 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM rashod WHERE tovName like'+k2+' order by tovName');
    Open;
  end;
end;


//����� ��������� �� ������
procedure TForm1.Edit1Change(Sender: TObject);
 var help1, help2: string;
begin
 help1:='%'+Form1.Edit1.Text+'%';
 help2:=QuotedStr(help1);
 with Form1.ProductionADOQuery2 do
  begin
    close;
    SQL.Clear;
    SQL.Add('SELECT * FROM tovar WHERE tovName like '+help2+'');
    Open;
  end;
end;

//��������� ��������� ����� ����
procedure TForm1.BtnEditClick(Sender: TObject);
begin
  AddProductionForm.Caption:='��������';
  AddProductionForm.Show;
end;

end.
