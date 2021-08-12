unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement, IdZLibCompressorBase, IdCompressorZLib, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, Vcl.StdCtrls, Winapi.TlHelp32, DosCommand, Vcl.ExtCtrls, Winapi.ShellAPI, AdvEdit,
  AdvEdBtn, AdvDirectoryEdit, IdServerIOHandler, IdServerIOHandlerSocket, IdServerIOHandlerStack,
  IdIOHandlerStream,OtlParallel,OtlTaskControl, IdAntiFreezeBase, IdAntiFreeze;

type
  TfDownXV = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    edPgOd: TEdit;
    edPgDo: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit4: TEdit;
    Memo2: TMemo;
    Memo3: TMemo;
    Button6: TButton;
    IdHTTP1: TIdHTTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    IdCompressorZLib1: TIdCompressorZLib;
    JvFormStorage1: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    Label2: TLabel;
    DosCommand1: TDosCommand;
    Panel2: TPanel;
    Label5: TLabel;
    Panel1: TPanel;
    Label4: TLabel;
    Edit5: TEdit;
    Label1: TLabel;
    edKatOut: TAdvDirectoryEdit;
    Label3: TLabel;
    edAdr: TEdit;
    edMaxDown: TEdit;
    IdIOHandlerStream1: TIdIOHandlerStream;
    IdServerIOHandlerStack1: TIdServerIOHandlerStack;
    buStop: TButton;
    IdAntiFreeze1: TIdAntiFreeze;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Memo2DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure buStopClick(Sender: TObject);
  private
    tytul, HT: string;
    stop: boolean;
    nDn: integer;
    function DownAddr(Sender: TObject; Addr:string):string;
    procedure Bu3(Sender: TObject);
    procedure Bu4(Sender: TObject);
    procedure Bu5(Sender: TObject);
    procedure Bu1(Sender: TObject; adr: string);
  public
    { Public declarations }
  end;

var
  fDownXV: TfDownXV;

implementation

{$R *.dfm}

uses uTestDb;

const
  GB = 1024*1024*1024;

function processExists(exeFileName: string): Integer;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
  np: integer;
begin
  np:=0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
    begin
      Inc(np);
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
  Result:=np;
end;

procedure TfDownXV.Button2Click(Sender: TObject);
var
  i,n1, n2: Integer;
  s, s1, s2: string;
begin
  Memo2.Clear;
  s:=Memo1.Lines.Text;
  s := StringReplace(s,#13#10,'',[rfReplaceAll]);
  while s>'' do
  begin
    n1:=Pos('<div class="thumb"><a href="/video', s);
    n1:=Pos('/video', s, n1);
    if n1=0 then Break;
    n2:=Pos('"><img', s , n1+1);
    s1:= Copy(s,n1,n2-n1); Delete(s,1,n2);

    Memo2.Lines.Add(s1);
  end;

  Label2.Caption:= Memo2.Lines.Count.ToString;
end;

procedure TfDownXV.Button3Click(Sender: TObject); // stronka
var s: string;
begin
  Bu3(Sender);
  s := Edit5.Text;
  if Pos('ics-1',s)=1 then buStopClick(Sender);
  //LastDelimiter(
end;

procedure TfDownXV.Bu3(Sender: TObject);
var
  adr, s: string;
  n1: integer;
begin
  edAdr.Text:='';
  adr := Edit4.Text; //HT+Memo2.Lines[0];
  s := DownAddr(Sender,adr);
  s := StringReplace(s,#13#10,'',[rfReplaceAll]);
  Memo3.Text := s;
  n1:=Pos('html5player.setVideoHLS(',s);  Delete(s,1,n1+1);
  n1:=Pos('(',s);  Delete(s,1,n1+1);
  n1:=Pos(')',s);
  adr := Copy(s,1,n1-2);
  Edit5.Text := adr;
  s:=Edit4.Text;
  n1:=Pos('.',s); Delete(s,1,n1);
  n1:=Pos('/',s); Delete(s,1,n1);
  s:=StringReplace(s,'/','=',[rfReplaceAll]);
  tytul:=s;
  label1.Caption:=s;
end;

procedure TfDownXV.Button4Click(Sender: TObject);
begin
  Bu4(Sender);
end;

procedure TfDownXV.Bu4(Sender: TObject);
var
  adr, s: string;
  n1: integer;
begin
  adr := Edit4.Text; //HT+Memo2.Lines[0];
  s := DownAddr(Sender,adr);
  s := StringReplace(s,#13#10,'',[rfReplaceAll]);

  s := Memo3.Lines.Text;

  n1:=Pos('html5player.setVideoHLS(',s);  Delete(s,1,n1+1);
  n1:=Pos('(',s);  Delete(s,1,n1+1);
  n1:=Pos(')',s);
  adr := Copy(s,1,n1-2);
  Edit5.Text := adr;
end;

procedure TfDownXV.Button5Click(Sender: TObject); // ffmpeg
begin
  Bu5(Sender);
end;

procedure AtomicInc(var i: integer); //i := i+1;
asm
  lock inc dword ptr[eax];
end;

procedure TfDownXV.Bu5(Sender: TObject); // ffmpeg
var htp, fout, par, dsk: string;
  n, thn, mxDn:integer;
  space: int64;
begin

  htp:=Edit5.Text;

  fout:=tytul;

  n   :=Pos('=',fout);
  fout:=Copy(fout,1,n-1);

  if fTestDB.TestPlk(fout) then
  begin
    Panel2.Caption:='Pomiñ';
    Panel2.Color  :=clGreen;
  end else
  begin
    Panel2.Caption:='WeŸ';
    Panel2.Color  :=clYellow;

    Label5.Caption:=fout;
    Application.ProcessMessages;

    par  :='-i "'+htp+'" -c copy -bsf:a aac_adtstoasc -n "'+edKatOut.Text+'\'+UTF8Decode(tytul)+'.mp4"';
    // ffmpeg -i a.m3u8 -acodec copy -vcodec copy out.mp4
    edAdr.Text := 'ffmpeg.exe '+par;
    ShellExecute(0, nil, 'ffmpeg.exe',  PChar(par), nil, SW_SHOWMINNOACTIVE);//SW_SHOWNOACTIVATE);//SW_HIDE);
    //Atomic
    Inc(nDn);
  end;
  thn:=processExists('ffmpeg.exe');
  Panel1.Caption:='pobieram: '+thn.ToString;
  dsk:=UpperCase(edKatOut.Text);
  space := DiskFree(Ord(dsk[1])-Ord('A')+1);
  Label4.Caption:=Format('wolne: %.3f GB',[space/1024/1024/1024]);
  //Label4.Caption:=FloatToStrF(space, ffNumber, 20, 0);
//    if space<(10*Int64(GB)) then
  mxDn := StrToIntDef(edMaxDown.Text,10);
  while (thn>mxDn)or(space<(10*Int64(GB))) do
  begin
    if stop then Break;
    Panel1.Color := clBlue;
    Sleep(200);
    Application.ProcessMessages;
    Application.ProcessMessages;
    thn:=processExists('ffmpeg.exe');
    dsk:=UpperCase(edKatOut.Text);
    space := DiskFree(Ord(dsk[1])-Ord('A')+1);
    Label4.Caption:=Format('wolne: %.3f GB',[space/1024/1024/1024]);

    Panel1.Caption:='pobieram: '+processExists('ffmpeg.exe').ToString;
    if stop then Break;
  end;
  Panel1.Color := clYellow;
end;

procedure TfDownXV.buStopClick(Sender: TObject);
begin
  stop:=true;
  buStop.Caption:='----';
end;

procedure TfDownXV.Button6Click(Sender: TObject);
var ff, j, i, k, n, m: integer;
  s: string;
begin
  stop:=false; ndn:=0;
  buStop.Caption:='Stop';
  n := StrToIntDef(edPgDo.Text,999);
  k := StrToIntDef(edPgOd.Text,0);
  for i := k to n do
  begin
    if stop then Break;
    edPgOd.Text := i.ToString;
    Button1Click(Sender);
    Button2Click(Sender);
    ff:= Memo2.Lines.Count-1;
    for j := 0 to ff do
    begin
      if stop then Break;
      Label3.Caption := (j).ToString;
      s:= Trim(Memo2.Lines[j]);
      if s='' then Continue;
      Edit4.Text     := HT+s;
      if Trim(Edit4.Text)='' then Continue;
      Button3Click(Sender);
      Button4Click(Sender);
      Button5Click(Sender);
      Label6.Caption := ndn.ToString;
    end;
    m := StrToIntDef(edPgDo.Text,999);
    if i>m then  buStopClick(Sender);
  end;
end;

function TfDownXV.DownAddr(Sender: TObject; Addr:string):string;
var s, adr: string;
  done:boolean;
begin
  adr:=Addr;
  done:=false;
  Parallel.Async(
      procedure
      begin
           //executed in background thread
           //AsyncParallelFor;
           try
           s:=IdHttp1.Get(Adr);
           except
           s:='';
           end;
      end,
      Parallel.TaskConfig.OnTerminated(
      procedure (const task: IOmniTaskControl)
      begin
           //executed in main thread after the async has finished
           done:=true;
      end
      )
  );
  //this point is reached immediately after the call to Async
  //the repeat loop waits until the Async is finished being signalled via done variable
  repeat
       application.processmessages;
  until done=true;

  Result := s;
end;


procedure TfDownXV.Button1Click(Sender: TObject);
var done:boolean;
  adr, s1: string;
  n1 : integer;
begin
  done:=false;
  s1 := Edit1.Text;
  //https://www.xvideos.com/?k=screaming+crying&quality=hd&p=1
  //https://www.xvideos.com/tags/q:hd/rough/
  if Pos('/?',s1)>0 then
  begin
    n1:=Pos('&p=',s1);
    if n1>0 then s1:=Copy(s1,1,n1-1);
    s1:=s1+'&p='+edPgOd.Text
  end else
    //if Pos('/tags/',s1)>0 then
    begin
      if s1[ Length(s1)]<>'/' then s1:=s1+'/';
      s1:=s1+edPgOd.Text;
    end;
  Label7.Caption:=s1;
  Parallel.Async(
      procedure
      begin
           //executed in background thread
           //AsyncParallelFor;
           Bu1(Sender,s1);
      end,
      Parallel.TaskConfig.OnTerminated(
      procedure (const task: IOmniTaskControl)
      begin
           //executed in main thread after the async has finished
           done:=true;
      end
      )
  );
  //this point is reached immediately after the call to Async
  //the repeat loop waits until the Async is finished being signalled via done variable
  repeat
       application.processmessages;
  until done=true;
end;

procedure TfDownXV.Bu1(Sender: TObject; adr: string);
var s, s1: string;
  n1,n2:Integer;
begin
  s := DownAddr(Sender, adr);
  TThread.Synchronize(nil,
    Procedure
    begin
      Memo1.Text:=s;
    end ) ;
  s1:= StringReplace(s,#13#10,'',[rfReplaceAll]);;
  n1:=Pos('last-page">',s1); Delete(s1,1,n1);
  n1:=Pos('>',s1);        Delete(s1,1,n1);
  n2:=Pos('<',s1);
  TThread.Synchronize(nil,
    Procedure
    begin
      edPgDo.Text:=Copy( s1,1,n2-1);
    end ) ;

  s := Edit1.Text;
  n1:=Pos('/',s,9);
  HT:=Copy(s,1,n1-1);
end;

procedure TfDownXV.FormCreate(Sender: TObject);
begin
  JvAppIniFileStorage1.FileName:=ChangeFileExt(Application.ExeName,'.ini');
  // IdHTTP1.Request.UserAgent := 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Firefox/12.0';
  // IdHTTP1.Request.UserAgent := 'Mozilla/5.0';
  //IdHTTP1.Request.UserAgent := 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36';
  //IdHTTP1.Request.UserAgent := 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1';
  IdHTTP1.Request.UserAgent := 'Mozilla/4.0 (compatible; MSIE 6.0b; Windows NT 5.1; .NET CLR 1.0.2914)';
  //IdHTTP1.Request.UserAgent := 'Mozilla/4.0';
  buStop.Caption:='----';
end;

procedure TfDownXV.Memo2DblClick(Sender: TObject);
var n: integer;
begin
  n:=Memo2.CaretPos.Y;
  Edit4.Text := HT+Memo2.Lines[n];
end;

end.
