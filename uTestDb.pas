unit uTestDb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, 
  Vcl.StdCtrls;

type
  TfTestDB = class(TForm)
    Button1: TButton;
    OD1: TOpenDialog;
    ListBox1: TListBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    ss:TStringList;
    nDod: integer;
  public
    function TestPlk( plk: string):boolean;
  end;

var
  fTestDB: TfTestDB;

implementation

{$R *.dfm}

const
  PlikDB = 'DBplik.txt';


procedure TfTestDB.Button1Click(Sender: TObject);
var
  sr: TSearchRec;
  FileAttrs: Integer;
  plk, kat: string;
  ss: TStringList;
  dn, ds: Integer;
begin
  OD1.InitialDir := GetCurrentDir;
  if not OD1.Execute then Exit;
  kat := ExtractFileDir(OD1.FileName);
  ss:=TStringList.Create;

  FileAttrs := FileAttrs + faAnyFile;
  if FindFirst( kat+'\*.mp4', FileAttrs, sr) = 0 then
  begin
    repeat
      if (sr.Attr and FileAttrs) = sr.Attr then
      begin
      plk := ExtractFileName(sr.Name);
      if not TestPlk(plk) then
      begin
        ss.Add(plk);
        Inc(dn);
      end else
        Inc(ds);
      end;
      Label1.Caption:=Format('Dod=%d , Ndo=%d',[dn,ds]);
      Application.ProcessMessages;
    until FindNext(sr) <> 0;
    FindClose(sr);
  end;
  ListBox1.Items.Assign(ss);
  ss.Free;
end;

procedure TfTestDB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ss.SaveToFile( PlikDB );
  ss.Free;
end;

procedure TfTestDB.FormCreate(Sender: TObject);
begin
  ss:=TStringList.Create;
  if FileExists( PlikDB ) then
    ss.LoadFromFile( PlikDB );
  nDod:=0;
end;

function TfTestDB.TestPlk(plk: string): boolean;
var poz: integer;
begin
  Result:=False;
  poz:=ss.IndexOf(plk);
  if poz>=0 then Result:=true
  else
  begin
    ss.Add(plk);
    Inc(nDod);
  end;
  if nDod>=10 then
  begin
    nDod:=0;
    ss.SaveToFile( PlikDB );
  end;
end;




end.
