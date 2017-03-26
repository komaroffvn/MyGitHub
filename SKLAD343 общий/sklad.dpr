program sklad;

uses
  Forms,
  sklad343 in 'sklad343.pas' {Form1},
  AddProduction in 'AddProduction.pas' {AddProductionForm},
  AllProduction in 'AllProduction.pas' {Form2},
  zastavka in 'zastavka.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4},
  AddCategory in 'AddCategory.pas' {Form5},
  Unit6 in 'Unit6.pas' {Form6},
  rashod in 'rashod.pas' {Form7},
  ostatok in 'ostatok.pas' {Form8},
  RedaktRashod in 'RedaktRashod.pas' {Form9},
  Postavschik in 'Postavschik.pas' {Form10},
  report in 'report.pas' {Form11};

{$R *.res}

begin
  Application.Initialize;
  Form3 := TForm3.Create(Application);
  Form3.Show;
  while Form3.Timer1.Enabled do Application.ProcessMessages;

  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Form3.Free;
  Application.CreateForm(TAddProductionForm, AddProductionForm);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
