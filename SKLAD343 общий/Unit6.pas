unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.UITypes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sklad343, AllProduction, rashod, iniFiles, ostatok, Postavschik, AddCategory;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  Ini: TIniFile;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  if Form6.OpenDialog1.Execute then Form6.Edit1.Text:= Form6.OpenDialog1.FileName;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  Ini:= TIniFile.Create(ExtractFilePath(ParamStr(0))+'setting.ini');
  Ini.WriteString('���� � ��','ConStr', Form6.Edit1.Text);
  Ini.Free;
   if Form6.Edit1.Text=''
   then
    MessageDlg('���� �� �� ������. �������� ���� ��',mtError,[mbOk],0)
    else
     begin
      Form1.ProductionADOQuery2.Active:= false;
      Form1.CategoryADOQuery1.Active:= false;
      Form1.OstatokADOQuery3.Active:= false;
      Form1.RashodADOQuery4.Active:= false;
      Form2.ADOQuery1.Active:= false;
      Form5.ADOQuery1.Active:= false;
      Form7.ADOQuery1.Active:= false;
      Form8.ADOQuery1.Active:= false;
      Form10.ADOTable1.Active:= false;
      Form1.ADOConnection1.Close;
      Form2.ADOConnection1.Close;
      Form5.ADOConnection1.Close;
      Form7.ADOConnection1.Close;
      Form8.ADOConnection1.Close;
      Form10.ADOConnection1.Close;
      Form1.ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Form6.Edit1.Text+';Persist Security Info=False;';
      Form2.ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Form6.Edit1.Text+';Persist Security Info=False;';
      Form5.ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Form6.Edit1.Text+';Persist Security Info=False;';
      Form7.ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Form6.Edit1.Text+';Persist Security Info=False;';
      Form8.ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Form6.Edit1.Text+';Persist Security Info=False;';
      Form10.ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Form6.Edit1.Text+';Persist Security Info=False;';
      Form1.ADOConnection1.Open();
      Form2.ADOConnection1.Open();
      Form5.ADOConnection1.Open();
      Form7.ADOConnection1.Open();
      Form8.ADOConnection1.Open();
      Form10.ADOConnection1.Open();
      Form1.OstatokADOQuery3.Active:= true;
      Form1.ProductionADOQuery2.Active:= true;
      Form1.CategoryADOQuery1.Active:= true;
      Form1.RashodADOQuery4.Active:= true;
      Form2.ADOQuery1.Active:= true;
      Form5.ADOQuery1.Active:= true;
      Form7.ADOQuery1.Active:= true;
      Form8.ADOQuery1.Active:= true;
      Form10.ADOTable1.Active:= true;
      Form6.Close;
     end;
end;



procedure TForm6.FormCreate(Sender: TObject);
begin
  Ini:= TIniFile.Create(ExtractFilePath(ParamStr(0))+'setting.ini');
  Form6.Edit1.Text:= Ini.ReadString('���� � ��','ConStr', Form6.Edit1.Text);
  Ini.Free;
end;

end.
