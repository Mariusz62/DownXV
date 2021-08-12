program DownXV;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {fDownXV},
  uTestDb in 'uTestDb.pas' {fTestDB};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfDownXV, fDownXV);
  Application.CreateForm(TfTestDB, fTestDB);
  Application.Run;
end.
