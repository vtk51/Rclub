unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, FIBDatabase, pFIBDatabase, FIBDataSet,
  pFIBDataSet, EhLibVCL,EhLibFIB, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, DBCtrlsEh, Vcl.Menus, DataSetImpExpEh,shellapi,DBGridEhImpExp,
  Vcl.ExtCtrls, PropFilerEh, PropStorageEh, FIBQuery, pFIBQuery,UITypes,inifiles;

type
  TForm1 = class(TForm)
    SP: TStatusBar;
    gr: TDBGridEh;
    db: TpFIBDatabase;
    dset1: TpFIBDataSet;
    tr1: TpFIBTransaction;
    ds: TDataSource;
    pc: TPageControl;
    ts1: TTabSheet;
    dset1NPR: TFIBIntegerField;
    dset1DAT: TFIBDateTimeField;
    dset1VREM: TFIBDateTimeField;
    dset1NSCH: TFIBIntegerField;
    dset1NNAK: TFIBIntegerField;
    dset1NPLAT: TFIBIntegerField;
    dset1NAME: TFIBStringField;
    dset1S: TFIBFloatField;
    dset1MAG: TFIBStringField;
    dset1PP_SUM: TFIBFloatField;
    dset1POKUP_NOM: TFIBIntegerField;
    dset1SOTR: TFIBStringField;
    dset1CUSER: TFIBStringField;
    D1: TDBDateTimeEditEh;
    D2: TDBDateTimeEditEh;
    GroupBox1: TGroupBox;
    chpokup: TCheckBox;
    chSvoi: TCheckBox;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    RG: TRadioGroup;
    GroupBox2: TGroupBox;
    NameS: TDBEditEh;
    Ch_year: TCheckBox;
    UPD: TButton;
    RegPropStorageManEh1: TRegPropStorageManEh;
    PropStorageEh1: TPropStorageEh;
    QrTr: TpFIBTransaction;
    Org: TDBComboBoxEh;
    Qr: TpFIBQuery;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    NomS: TDBNumberEditEh;
    dset1COMPANY: TFIBIntegerField;
    dset1PRIM: TFIBStringField;
    dset1DAT_OPLAT: TFIBDateTimeField;
    dset1prosr: TBooleanField;
    N6: TMenuItem;
    N7: TMenuItem;
    dset1KUPD_NPR: TFIBIntegerField;
    dset1NOM_REESTR: TFIBIntegerField;
    dset1DAT_REESTR: TFIBDateTimeField;
    N8: TMenuItem;
    EdPropusk: TDBEditEh;
    procedure FormShow(Sender: TObject);
    procedure GetData(Sender:TObject);
    procedure DllUp(v,basa:AnsiString);
    procedure UPDClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure NomSKeyPress(Sender: TObject; var Key: Char);
    procedure NameSKeyPress(Sender: TObject; var Key: Char);
    procedure RGClick(Sender: TObject);
    procedure chpokupClick(Sender: TObject);
    procedure Ch_yearClick(Sender: TObject);
    procedure D1Change(Sender: TObject);
    procedure grColumns9GetCellParams(Sender: TObject; EditMode: Boolean;
      Params: TColCellParamsEh);
    procedure OrgChange(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure PrintDoc(report:string);
    procedure N5Click(Sender: TObject);
    procedure dset1CalcFields(DataSet: TDataSet);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grColumns7GetCellParams(Sender: TObject; EditMode: Boolean;
      Params: TColCellParamsEh);
    procedure N8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  v,filename,company,path:string;

implementation

{$R *.dfm}

uses Unit2;

function GetVersion: string;
 var
   VerInfoSize: DWORD;
   VerInfo: Pointer;
   VerValueSize: DWORD;
   VerValue: PVSFixedFileInfo;
   Dummy: DWORD;
 begin
   VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
   GetMem(VerInfo, VerInfoSize);
   GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
   VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
   with VerValue^ do
   begin
     Result := IntToStr(dwFileVersionMS shr 16);
     Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
     Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
     Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
   end;
   FreeMem(VerInfo, VerInfoSize);
 end;

procedure TForm1.PrintDoc(report:string);
type
  TDllShow=procedure(basa,user,pass,report_path,report,str,osn,igk:string;npr,mag,m,id,des:integer);stdcall;
var
  Han:THandle;
  DllShow:TDllShow;
begin
   Han:=loadlibrary('DllPrint.dll');
   try
      if han>=32 then begin
         @DllShow:=getprocaddress(han,'PrintDoc');
         DllShow(db.DBName,'VTK','1506','\\192.168.1.101\repports\',report,'','','',dset1npr.AsInteger,0,0,dset1company.AsInteger,0);
      end
      else
         MessageDlg('Не удалось загрузить модуль DllPrint.dll', mtWarning, [mbOK], 0);
   finally
      freeLibrary(han);
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var Gini:TiniFile;
begin
  Gini:=TiniFile.Create(ChangeFileExt(application.exeName,'.ini'));
  path:=Gini.ReadString('main','database','192.168.1.2:d:\basa\new138.gdb');
  Gini.Free;
  db.Close;
  db.DBName:=path;
  db.Open;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
dset1.Close;
qr.Close;
db.Close;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
if ClientWidth<700 then ClientWidth:=700;
if ClientHeight<450 then ClientHeight:=450;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  org.Items.Clear;
  org.KeyItems.Clear;
  qr.Database:=db;
  qr.Transaction:=QrTr;
  qr.SQL.Clear;
  qr.SQL.Text:='select id,name from client where grup=5';
  qr.ExecQuery;
   while not qr.Eof
    do begin
    org.Items.Add(qr.FieldByName('NAME').AsString);
    org.KeyItems.Add(qr.FieldByName('ID').AsString);
    qr.Next;
   end;
  qr.Close;
  org.ItemIndex:=1;
  v:=GetVersion;
  filename:=GetEnvironmentVariable('TMP')+'\gtdexport';
  dllup(AnsiString(v),AnsiString(db.DatabaseName));
  D1.Value:=now-1;
  D2.Value:=now;
  sp.Panels.Items[0].Text:='БД: '+db.DatabaseName;
  sp.Panels.Items[2].Text:='версия: '+v;
  OrgChange(sender);
  ChPokupClick(Sender);
  RgClick(Sender);
  UpdClick(Sender);
  NomS.SetFocus;
end;

procedure TForm1.DllUp(v,basa:AnsiString);
type
Tbanzay=function(ver,basa:AnsiString):integer;stdcall;
var
han:THandle;
banzay:Tbanzay;
//prog:AnsiString;
//cod:byte;
begin
//  prog:=AnsiString(Application.ExeName);
  @banzay:=nil;
  han:=LoadLibrary('vup.dll');
  if han >=32 then
    begin
      @banzay:=GetProcAddress(han,'banzay');
        if @banzay<>nil then
          if banzay(v,basa)=1 then
            begin
              MessageDlg('Программа обновлена.'+#13+
                         'чтобы изменения вступили в силу-'+#13+
                          'перезапустите программу',mtWarning,[mbOK],0);
              application.Terminate;
//              cod:=WinExec(PChar(prog), SW_Restore);
            end;
     end
  else
    MessageDlg('не найдена библеотека обновления VUP.dll',mtWarning,[mbOK],0);
  FreeLibrary(han);
end;

procedure TForm1.dset1CalcFields(DataSet: TDataSet);
begin
  if  (now>dset1dat_oplat.AsDateTime) and (dset1S.AsCurrency>dset1PP_SUM.AsCurrency)   then
  dset1prosr.AsBoolean:=True else
  dset1prosr.AsBoolean:=False;
end;

procedure TForm1.GetData(Sender:TObject);
var
st: TdateTime;
sql:TpFIBQuery;
nnak:String;
begin
if (Sender = UPD) and (rg.ItemIndex=1) then
  begin
    sql:=TpFIBQuery.Create(nil);
    with sql do
     try
       Database:=db;
       Transaction:=QrTr;
       SQL.Text:='select * from check_nnak(:C,:D1,:D2)';
       ParamByName('C').AsString:=company;
       ParamByName('D1').AsDate:=d1.Value;
       ParamByName('D2').AsDate:=d2.Value;
       ExecQuery;
       while not Eof do begin
        nnak:=nnak+Fields[0].AsString+', ';
        Next;
      end;
        close;
      finally
        sql.free;
      end;
  EdPropusk.Text:=nnak;
  end else
  EdPropusk.Clear;

  st:=Now;
  dset1.CloseOpen(false);
  sp.Panels.Items[1].Text:='выполнение: '+FormatFloat('0.00',(Now-st)*24*60*60)+' сек.' ;
end;

procedure TForm1.grColumns7GetCellParams(Sender: TObject; EditMode: Boolean;
  Params: TColCellParamsEh);
begin
if dset1KUPD_NPR.AsInteger>0 then
 params.Background:=clGreen;
end;

procedure TForm1.grColumns9GetCellParams(Sender: TObject; EditMode: Boolean;
  Params: TColCellParamsEh);
begin
if dset1PP_SUM.AsCurrency=0 then
  Params.Text:='нет' else
   if (dset1PP_SUM.AsCurrency>0) and (dset1PP_SUM.AsCurrency<>dset1S.AsCurrency)  then
    params.Background:=clRed;
end;

procedure TForm1.UPDClick(Sender: TObject);
begin
  dset1.ParamByName('dat').AsString:='prnpr.dat between "'+D1.Text+'" and "'+D2.text+'"';
  RgClick(sender);
  GetData(Sender);
end;

procedure TForm1.ChPokupClick(Sender: TObject);
begin
if (chSvoi.Checked=false) and (chPokup.Checked=true) then
    dset1.ParamByName('grup').AsString:='client.grup =1' else
  if (chSvoi.Checked=true) and (chPokup.Checked=false) then
    dset1.ParamByName('grup').AsString:='client.grup =8' else
    dset1.ParamByName('grup').SetDefMacroValue;
end;

procedure TForm1.Ch_yearClick(Sender: TObject);
begin
   if Ch_year.Checked then
     dset1.ParamByName('dat').AsString:='prnpr.dat between "'+datetostr(now-365)+'" and "'+datetostr(now)+'"' else
     dset1.ParamByName('dat').SetDefMacroValue;
     //dset1.CloseOpen(false);
end;

procedure TForm1.D1Change(Sender: TObject);
begin
if D2.Value<D1.Value then D2.Value:=D1.Value;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  if FileExists(FileName+'.xls') then
   if DeleteFile(filename+'.xls') <> True   then
      filename:=filename+'1';
  ExportDBGridEhToXlsx(gr,FileName+'.xls',[]);
  ShellExecute(Handle, nil, PChar(FileName+'.xls'), nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.N2Click(Sender: TObject);
begin
OplatyF.ShowModal;
dset1.Refresh;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  dset1.ParamByName('opt').AsString:='prnpr.pokup_nom='+inttostr(dset1POKUP_NOM.asInteger)+' and prnpr.company='+company;
  Ch_yearClick(Sender);
  Getdata(sender);
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  qr.SQL.Clear;
  qr.SQL.Text:='select name,telefon,email,otvet from client where nom=:nc';
  qr.ParamByName('nc').AsInteger:=dset1POKUP_NOM.AsInteger;
  qr.ExecQuery;
  ShowMessage('конт. лицо: '+qr.FieldByName('OTVET').AsString+#13#10+
              'телефон: '+qr.FieldByName('TELEFON').AsString+#13#10+
              'e-mail: '+qr.FieldByName('EMAIL').AsString);
  qr.Close;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
 if dset1nsch.AsInteger=0 then
 ShowMessage('это не УПД') else
 if dset1KUPD_NPR.AsInteger>0 then
 PrintDoc('ukd.fr3') else
 PrintDoc('upd.fr3');


end;

procedure TForm1.N8Click(Sender: TObject);
begin
  dset1.ParamByName('opt').AsString:='prnpr.NOM_REESTR='+inttostr(dset1NOM_REESTR.asInteger)+' and prnpr.company='+company;
  Ch_yearClick(Sender);
  Getdata(sender);
end;

procedure TForm1.PopupMenu1Popup(Sender: TObject);
begin
//N6.Caption:=datetostr(dset1dat_oplat.AsDateTime);
N6.Caption:='НПР='+inttostr(dset1npr.AsInteger);
if dset1KUPD_NPR.AsInteger>0 then
begin
  qr.SQL.Clear;
  qr.SQL.Text:='select NSCH from PRNPR where NPR=:kupd_npr';
  qr.ParamByName('kupd_npr').AsInteger:=dset1KUPD_NPR.AsInteger;
  qr.ExecQuery;
  N7.Visible:=true;
  N7.Caption:='К УПД № '+qr.FieldByName('NSCH').AsString;
  qr.Close;
end
 else
  N7.Visible:=false;

if dset1NOM_REESTR.AsInteger >0 then
N8.Visible:=true else
N8.Visible:=false;


end;

procedure TForm1.NameSKeyPress(Sender: TObject; var Key: Char);
begin
 if (key=#13) and (nameS.Text<>'') then
  begin
    //nomS.Text:='';
    dset1.ParamByName('opt').AsString:='upper(client.name COLLATE PXW_CYRL) containing "'+nameS.Text+'" and prnpr.company='+company;
    Ch_yearClick(Sender);
    Getdata(sender);
  end;
end;

procedure TForm1.NomSKeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) and (nomS.Text<>'') then
  begin
    nameS.Text:='';
    dset1.ParamByName('opt').AsString:='(prnpr.nplat='+nomS.Text+' or prnpr.nsch='+nomS.Text+') and prnpr.company='+company;
    Ch_yearClick(Sender);
    Getdata(sender);
  end;
end;

procedure TForm1.OrgChange(Sender: TObject);
begin
 company:=org.KeyItems[org.ItemIndex];
end;

procedure TForm1.RGClick(Sender: TObject);
begin
if rg.ItemIndex=1 then
    dset1.ParamByName('opt').AsString:='prnpr.nsch>0 and prnpr.company='+company
  else
      dset1.ParamByName('opt').AsString:='prnpr.nsch=0 and prnpr.nnak=0 and prnpr.company='+company;
end;

end.
