unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,unit1, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB, FIBQuery,
  pFIBQuery, pFIBStoredProc, FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet,
  Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.Buttons;

type
  TOplatyF = class(TForm)
    DBGridEh1: TDBGridEh;
    SumDoc: TDBEditEh;
    ppPrim: TDBEditEh;
    addB: TButton;
    dset2: TpFIBDataSet;
    tr2: TpFIBTransaction;
    Proc: TpFIBStoredProc;
    Ds2: TDataSource;
    Nav: TDBNavigator;
    SpeedButton1: TSpeedButton;
    ppD: TDBDateTimeEditEh;
    dset2NOM: TFIBIntegerField;
    dset2PP: TFIBIntegerField;
    dset2S: TFIBFloatField;
    dset2DAT_VYD: TFIBDateTimeField;
    dset2BONUS: TFIBFloatField;
    dset2PRIM: TFIBStringField;
    dset2NPR: TFIBIntegerField;
    dset2ZAYA_NOM: TFIBIntegerField;
    dset2CLIENT_ID: TFIBIntegerField;
    ppS: TDBNumberEditEh;
    ppN: TDBNumberEditEh;
    procedure FormShow(Sender: TObject);
    procedure addBClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OplatyF: TOplatyF;

implementation

{$R *.dfm}

procedure TOplatyF.addBClick(Sender: TObject);
begin
Proc.Prepare;
Proc.ParamByName('npr').AsInteger:=Form1.dset1NPR.asinteger;
Proc.ParamByName('pp').AsInteger:=ppN.Value;
Proc.ParamByName('s').AsFloat:=ppS.Value;
Proc.ParamByName('dat_vyd').AsDateTime:=ppD.Value;
Proc.ParamByName('prim').AsString:=ppPrim.Text;
Proc.ExecQuery;
dset2.CloseOpen(false);
end;

procedure TOplatyF.FormShow(Sender: TObject);
begin
SumDoc.Value:=Form1.dset1S.AsCurrency;
ppD.Value:=NOW-1;
ppS.Value:=0;
ppN.Value:=0;
ppPrim.Text:='';
OplatyF.Caption:=form1.dset1NAME.AsString+' Ñ÷åò ¹ '+Form1.dset1NPLAT.AsString;
dset2.Close;
dset2.ParamByName('npr').AsInteger:=Form1.dset1NPR.asinteger;
//npr:=Form1.fbntgrfldds2NPR.asinteger;
dset2.Open;
ppS.SetFocus;
end;

procedure TOplatyF.SpeedButton1Click(Sender: TObject);
begin
ppS.Value:=SumDoc.Value;
end;

end.
