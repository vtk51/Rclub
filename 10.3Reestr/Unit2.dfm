object OplatyF: TOplatyF
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1054#1087#1083#1072#1090#1099
  ClientHeight = 292
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 24
    Top = 43
    Width = 75
    Height = 22
    Caption = #8595
    OnClick = SpeedButton1Click
  end
  object DBGridEh1: TDBGridEh
    Left = 135
    Top = 0
    Width = 501
    Height = 292
    Align = alRight
    DataSource = Ds2
    DynProps = <>
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NOM'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PP'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'S'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DAT_VYD'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'BONUS'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PRIM'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NPR'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZAYA_NOM'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CLIENT_ID'
        Footers = <>
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object SumDoc: TDBEditEh
    Left = 8
    Top = 16
    Width = 121
    Height = 21
    Color = clMenu
    ControlLabel.Width = 61
    ControlLabel.Height = 13
    ControlLabel.Caption = #1089#1091#1084#1084#1072' '#1089#1095#1077#1090#1072
    ControlLabel.Visible = True
    DynProps = <>
    EditButtons = <>
    TabOrder = 1
    Text = '0'
    Visible = True
  end
  object ppPrim: TDBEditEh
    Left = 8
    Top = 201
    Width = 121
    Height = 21
    ControlLabel.Width = 60
    ControlLabel.Height = 13
    ControlLabel.Caption = #1087#1088#1080#1084#1077#1095#1072#1085#1080#1077
    ControlLabel.Visible = True
    DynProps = <>
    EditButtons = <>
    TabOrder = 2
    Visible = True
  end
  object addB: TButton
    Left = 8
    Top = 236
    Width = 121
    Height = 25
    Caption = #1076#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 3
    OnClick = addBClick
  end
  object Nav: TDBNavigator
    Left = 8
    Top = 267
    Width = 120
    Height = 25
    DataSource = Ds2
    VisibleButtons = [nbDelete, nbPost, nbCancel]
    Flat = True
    ParentShowHint = False
    ConfirmDelete = False
    ShowHint = True
    TabOrder = 4
  end
  object ppD: TDBDateTimeEditEh
    Left = 8
    Top = 160
    Width = 121
    Height = 21
    ControlLabel.Width = 25
    ControlLabel.Height = 13
    ControlLabel.Caption = #1076#1072#1090#1072
    ControlLabel.Visible = True
    DynProps = <>
    EditButtons = <>
    Kind = dtkDateEh
    TabOrder = 5
    Visible = True
  end
  object ppS: TDBNumberEditEh
    Left = 8
    Top = 79
    Width = 121
    Height = 19
    ControlLabel.Width = 29
    ControlLabel.Height = 13
    ControlLabel.Caption = #1089#1091#1084#1084#1072
    ControlLabel.Visible = True
    DynProps = <>
    EditButtons = <>
    Flat = True
    TabOrder = 6
    Value = 0.000000000000000000
    Visible = True
  end
  object ppN: TDBNumberEditEh
    Left = 7
    Top = 119
    Width = 121
    Height = 19
    ControlLabel.Width = 45
    ControlLabel.Height = 13
    ControlLabel.Caption = #1085#1086#1084#1077#1088' '#1087#1087
    ControlLabel.Visible = True
    DynProps = <>
    EditButtons = <>
    Flat = True
    TabOrder = 7
    Value = 0.000000000000000000
    Visible = True
  end
  object dset2: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE PRODAJA_PP'
      'SET '
      '    PP = :PP,'
      '    S = :S,'
      '    DAT_VYD = :DAT_VYD,'
      '    BONUS = :BONUS,'
      '    PRIM = :PRIM,'
      '    NPR = :NPR,'
      '    ZAYA_NOM = :ZAYA_NOM'
      'WHERE'
      '    NOM = :OLD_NOM'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    PRODAJA_PP'
      'WHERE'
      '        NOM = :OLD_NOM'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO PRODAJA_PP('
      '    NOM,'
      '    PP,'
      '    S,'
      '    DAT_VYD,'
      '    BONUS,'
      '    PRIM,'
      '    NPR,'
      '    ZAYA_NOM'
      ')'
      'VALUES('
      '    :NOM,'
      '    :PP,'
      '    :S,'
      '    :DAT_VYD,'
      '    :BONUS,'
      '    :PRIM,'
      '    :NPR,'
      '    :ZAYA_NOM'
      ')')
    RefreshSQL.Strings = (
      'select *'
      'from prodaja_pp'
      'where(  npr=:npr'
      '     ) and (     PRODAJA_PP.NOM = :OLD_NOM'
      '     )'
      '    '
      '')
    SelectSQL.Strings = (
      'select *'
      'from prodaja_pp'
      'where npr=:npr'
      '')
    Active = True
    Transaction = tr2
    Database = Form1.db
    AutoCommit = True
    Left = 560
    Top = 176
    oVisibleRecno = True
    oNoForceIsNull = True
    object dset2NOM: TFIBIntegerField
      FieldName = 'NOM'
      Visible = False
    end
    object dset2PP: TFIBIntegerField
      DisplayLabel = #1085#1086#1084#1077#1088' '#1087#1087
      FieldName = 'PP'
    end
    object dset2S: TFIBFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'S'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object dset2DAT_VYD: TFIBDateTimeField
      DisplayLabel = #1076#1072#1090#1072
      FieldName = 'DAT_VYD'
      DisplayFormat = 'dd.mm.yyyy hh:nn'
    end
    object dset2BONUS: TFIBFloatField
      FieldName = 'BONUS'
      Visible = False
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object dset2PRIM: TFIBStringField
      DisplayLabel = #1087#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'PRIM'
      Size = 100
      EmptyStrToNull = True
    end
    object dset2NPR: TFIBIntegerField
      FieldName = 'NPR'
      Visible = False
    end
    object dset2ZAYA_NOM: TFIBIntegerField
      FieldName = 'ZAYA_NOM'
      Visible = False
    end
    object dset2CLIENT_ID: TFIBIntegerField
      FieldName = 'CLIENT_ID'
      Visible = False
    end
  end
  object tr2: TpFIBTransaction
    Active = True
    DefaultDatabase = Form1.db
    Left = 600
    Top = 176
  end
  object Proc: TpFIBStoredProc
    Transaction = tr2
    Database = Form1.db
    SQL.Strings = (
      
        'EXECUTE PROCEDURE INS_PRODAJA_PP (?NPR, ?PP, ?S, ?DAT_VYD, ?BONU' +
        'S, ?PRIM)')
    StoredProcName = 'INS_PRODAJA_PP'
    Left = 160
    Top = 216
    qoAutoCommit = True
    qoStartTransaction = True
    qoTrimCharFields = True
    qoNoForceIsNull = True
  end
  object Ds2: TDataSource
    DataSet = dset2
    Left = 520
    Top = 176
  end
end
