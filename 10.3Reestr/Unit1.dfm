object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Reestr2'
  ClientHeight = 431
  ClientWidth = 701
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SP: TStatusBar
    Left = 0
    Top = 412
    Width = 701
    Height = 19
    Panels = <
      item
        Text = #1041#1044':'
        Width = 300
      end
      item
        Text = #1074#1099#1087#1086#1083#1085#1077#1085#1080#1077':'
        Width = 300
      end
      item
        Text = #1074#1077#1088#1089#1080#1103':'
        Width = 50
      end>
    ExplicitTop = 380
  end
  object pc: TPageControl
    Left = 139
    Top = 0
    Width = 562
    Height = 412
    ActivePage = ts1
    Align = alRight
    Anchors = [akLeft, akTop, akRight, akBottom]
    MultiLine = True
    TabOrder = 1
    TabPosition = tpBottom
    ExplicitHeight = 380
    object ts1: TTabSheet
      Caption = 'TabSheet1'
      TabVisible = False
      ExplicitHeight = 372
      object gr: TDBGridEh
        Left = 0
        Top = 0
        Width = 554
        Height = 404
        Align = alClient
        Anchors = [akTop, akRight, akBottom]
        ColumnDefValues.Title.TitleButton = True
        DataSource = ds
        DynProps = <>
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Source Sans Pro'
        Font.Style = []
        FooterRowCount = 1
        IndicatorOptions = [gioShowRecNoEh]
        IndicatorTitle.ShowDropDownSign = True
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ParentFont = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        RowHeight = 2
        RowLines = 1
        SortLocal = True
        SumList.Active = True
        TabOrder = 0
        Columns = <
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
            FieldName = 'DAT'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'VREM'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NSCH'
            Footers = <>
            PopupMenu = PopupMenu1
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NNAK'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NPLAT'
            Footers = <>
            Width = 50
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME'
            Footer.Color = clLime
            Footer.Value = #1048#1058#1054#1043#1054':'
            Footer.ValueType = fvtStaticText
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'S'
            Footer.Color = clLime
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 80
            OnGetCellParams = grColumns7GetCellParams
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PP_SUM'
            Footer.Color = clLime
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 80
            OnGetCellParams = grColumns9GetCellParams
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MAG'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'POKUP_NOM'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SOTR'
            Footers = <>
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CUSER'
            Footers = <>
            Width = 50
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRIM'
            Footers = <>
            Width = 100
          end
          item
            CellButtons = <>
            Checkboxes = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'prosr'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DAT_OPLAT'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NOM_REESTR'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DAT_REESTR'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object D1: TDBDateTimeEditEh
    Left = 8
    Top = 16
    Width = 121
    Height = 21
    ControlLabel.Width = 33
    ControlLabel.Height = 13
    ControlLabel.Caption = #1076#1072#1090#1072' '#1089
    ControlLabel.Visible = True
    BevelInner = bvNone
    BevelOuter = bvNone
    DynProps = <>
    EditButtons = <>
    Kind = dtkDateEh
    TabOrder = 2
    Visible = True
    OnChange = D1Change
  end
  object D2: TDBDateTimeEditEh
    Left = 8
    Top = 56
    Width = 121
    Height = 21
    ControlLabel.Width = 40
    ControlLabel.Height = 13
    ControlLabel.Caption = #1076#1072#1090#1072' '#1087#1086
    ControlLabel.Visible = True
    DynProps = <>
    EditButtons = <>
    Kind = dtkDateEh
    TabOrder = 3
    Visible = True
    OnChange = D1Change
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 81
    Width = 122
    Height = 65
    Caption = #1082#1083#1080#1077#1085#1090#1099
    TabOrder = 4
    object chpokup: TCheckBox
      Left = 3
      Top = 16
      Width = 110
      Height = 17
      Caption = #1087#1086#1082#1091#1087#1072#1090#1077#1083#1080
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = chpokupClick
    end
    object chSvoi: TCheckBox
      Left = 3
      Top = 39
      Width = 110
      Height = 17
      Caption = #1089#1074#1086#1080' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = chpokupClick
    end
  end
  object RG: TRadioGroup
    Left = 8
    Top = 152
    Width = 125
    Height = 41
    Caption = #1087#1088#1086#1076#1072#1078#1080
    Columns = 2
    ItemIndex = 1
    Items.Strings = (
      #1089#1095#1077#1090#1072
      #1059#1055#1044)
    TabOrder = 5
    OnClick = RGClick
  end
  object GroupBox2: TGroupBox
    Left = 4
    Top = 250
    Width = 129
    Height = 99
    Caption = #1087#1086#1080#1089#1082
    TabOrder = 6
    object NameS: TDBEditEh
      Left = 4
      Top = 43
      Width = 121
      Height = 21
      Hint = #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072#1072
      ControlLabel.Caption = #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DynProps = <>
      EditButtons = <>
      EmptyDataInfo.Text = #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072#1072
      TabOrder = 0
      Visible = True
      OnKeyPress = NameSKeyPress
    end
    object Ch_year: TCheckBox
      Left = 4
      Top = 70
      Width = 97
      Height = 17
      Caption = #1079#1072' 365 '#1076#1085#1077#1081
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = Ch_yearClick
    end
    object NomS: TDBNumberEditEh
      Left = 5
      Top = 16
      Width = 121
      Height = 21
      Hint = #1085#1086#1084#1077#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      ControlLabel.Caption = #1085#1086#1084#1077#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Alignment = taLeftJustify
      DecimalPlaces = 0
      DynProps = <>
      EmptyDataInfo.Text = #1085#1086#1084#1077#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      EmptyDataInfo.Alignment = taLeftJustify
      EditButtons = <>
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Visible = True
      OnKeyPress = NomSKeyPress
    end
  end
  object UPD: TButton
    Left = 8
    Top = 199
    Width = 119
    Height = 25
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100
    TabOrder = 7
    OnClick = UPDClick
  end
  object Org: TDBComboBoxEh
    Left = 4
    Top = 351
    Width = 129
    Height = 21
    DynProps = <>
    EditButtons = <>
    TabOrder = 8
    Visible = True
    OnChange = OrgChange
  end
  object EdPropusk: TDBEditEh
    Left = 8
    Top = 230
    Width = 121
    Height = 14
    Hint = #1087#1088#1086#1087#1091#1097#1077#1085#1085#1099#1077' '#1085#1086#1084#1077#1088#1072
    ControlLabel.Caption = #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    DynProps = <>
    EditButtons = <>
    EmptyDataInfo.Text = #1087#1088#1086#1087#1091#1097#1077#1085#1085#1099#1077' '#1085#1086#1084#1077#1088#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Visible = True
    OnKeyPress = NameSKeyPress
  end
  object db: TpFIBDatabase
    Connected = True
    DBName = '192.168.1.2:d:\basa\new138.gdb'
    DBParams.Strings = (
      'user_name=VTK'
      'password=1506'
      'lc_ctype=WIN1251')
    SQLDialect = 1
    Timeout = 0
    WaitForRestoreConnect = 0
    Left = 608
    Top = 312
  end
  object dset1: TpFIBDataSet
    RefreshSQL.Strings = (
      'select prnpr.npr,'
      '       prnpr.dat,'
      '       prnpr.company,'
      '       prnpr.vremia vrem,'
      '       prnpr.nsch,'
      '       prnpr.nnak,'
      '       prnpr.nplat,'
      '       client.name,'
      '       prnpr.s,'
      
        '       IIF(prnpr.from_mag=0,'#39#1090#1086#1088#1075#1086#1074#1099#1081' '#1086#1090#1076#1077#1083#39',(select client.full' +
        '_name from client where id=prnpr.from_mag)) mag,'
      '       prnpr.pp_sum,'
      '       prnpr.pokup_nom,'
      '       prnpr.dat_oplat,'
      '       coalesce (sotrudnik.name,'#39#1085#1077' '#1091#1082#1072#1079#1072#1085#39') sotr,'
      
        '       coalesce ((select sotrudnik.name from sotrudnik where sot' +
        'rudnik.fblogin=prnpr.cuser),'#39#1085#1077' '#1091#1082#1072#1079#1072#1085#39') cuser,'
      '       prnpr.prim,'
      '       prnpr.KUPD_NPR,'
      '       prnpr.NOM_REESTR,'
      '       prnpr.DAT_REESTR'
      'from prnpr'
      'left join client on prnpr.pokup_nom=client.nom'
      'left join sotrudnik on prnpr.sotr_nom=sotrudnik.nom'
      'where(  @dat%0=0 And @opt%0=0 and @grup%0=0'
      '     ) and (     PRNPR.NPR = :OLD_NPR'
      '     )'
      '    '
      ' ')
    SelectSQL.Strings = (
      'select prnpr.npr,'
      '       prnpr.dat,'
      '       prnpr.company,'
      '       prnpr.vremia vrem,'
      '       prnpr.nsch,'
      '       prnpr.nnak,'
      '       prnpr.nplat,'
      '       client.name,'
      '       prnpr.s,'
      
        '       IIF(prnpr.from_mag=0,'#39#1090#1086#1088#1075#1086#1074#1099#1081' '#1086#1090#1076#1077#1083#39',(select client.full' +
        '_name from client where id=prnpr.from_mag)) mag,'
      '       prnpr.pp_sum,'
      '       prnpr.pokup_nom,'
      '       prnpr.dat_oplat,'
      '       coalesce (sotrudnik.name,'#39#1085#1077' '#1091#1082#1072#1079#1072#1085#39') sotr,'
      
        '       coalesce ((select sotrudnik.name from sotrudnik where sot' +
        'rudnik.fblogin=prnpr.cuser),'#39#1085#1077' '#1091#1082#1072#1079#1072#1085#39') cuser,'
      '       prnpr.prim,'
      '       prnpr.KUPD_NPR,'
      '       prnpr.NOM_REESTR,'
      '       prnpr.DAT_REESTR'
      'from prnpr'
      'left join client on prnpr.pokup_nom=client.nom'
      'left join sotrudnik on prnpr.sotr_nom=sotrudnik.nom'
      'where @dat%0=0 And @opt%0=0 and @grup%0=0'
      'order by prnpr.dat,prnpr.nsch'
      '')
    OnCalcFields = dset1CalcFields
    Transaction = tr1
    Database = db
    AutoCommit = True
    Left = 640
    Top = 312
    oNoForceIsNull = True
    object dset1NPR: TFIBIntegerField
      FieldName = 'NPR'
      Visible = False
    end
    object dset1DAT: TFIBDateTimeField
      DefaultExpression = 'TODAY'
      DisplayLabel = #1076#1072#1090#1072
      DisplayWidth = 10
      FieldName = 'DAT'
      ReadOnly = True
      DisplayFormat = 'dd.mm.yyyy'
    end
    object dset1VREM: TFIBDateTimeField
      DefaultExpression = 'NOW'
      DisplayLabel = #1074#1088#1077#1084#1103
      DisplayWidth = 8
      FieldName = 'VREM'
      DisplayFormat = 'hh:mm:ss'
    end
    object dset1NSCH: TFIBIntegerField
      DefaultExpression = '0'
      DisplayLabel = #1059#1055#1044
      DisplayWidth = 5
      FieldName = 'NSCH'
    end
    object dset1NNAK: TFIBIntegerField
      DefaultExpression = '0'
      DisplayLabel = #1085#1072#1082#1083'.'
      DisplayWidth = 5
      FieldName = 'NNAK'
    end
    object dset1NPLAT: TFIBIntegerField
      DefaultExpression = '0'
      DisplayLabel = #1089#1095#1077#1090
      DisplayWidth = 5
      FieldName = 'NPLAT'
    end
    object dset1NAME: TFIBStringField
      DisplayLabel = #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 50
      FieldName = 'NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object dset1S: TFIBFloatField
      DisplayLabel = #1089#1091#1084#1084#1072
      FieldName = 'S'
      DisplayFormat = ',0.00'
    end
    object dset1MAG: TFIBStringField
      DisplayLabel = #1084#1072#1075#1072#1079#1080#1085
      DisplayWidth = 15
      FieldName = 'MAG'
      Size = 200
      EmptyStrToNull = True
    end
    object dset1PP_SUM: TFIBFloatField
      DisplayLabel = #1086#1087#1083#1072#1090#1099
      FieldName = 'PP_SUM'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object dset1POKUP_NOM: TFIBIntegerField
      FieldName = 'POKUP_NOM'
      Visible = False
    end
    object dset1SOTR: TFIBStringField
      DisplayLabel = #1089#1086#1090#1088#1091#1076#1085#1080#1082
      DisplayWidth = 20
      FieldName = 'SOTR'
      Size = 50
      EmptyStrToNull = True
    end
    object dset1CUSER: TFIBStringField
      DisplayLabel = #1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      DisplayWidth = 20
      FieldName = 'CUSER'
      Size = 50
      EmptyStrToNull = True
    end
    object dset1COMPANY: TFIBIntegerField
      FieldName = 'COMPANY'
    end
    object dset1PRIM: TFIBStringField
      DisplayLabel = #1082#1086#1084#1077#1085#1090#1072#1088#1080#1081
      DisplayWidth = 50
      FieldName = 'PRIM'
      Size = 1000
      EmptyStrToNull = True
    end
    object dset1DAT_OPLAT: TFIBDateTimeField
      DisplayLabel = #1076#1072#1090#1072' '#1086#1087#1083#1072#1090#1099
      DisplayWidth = 10
      FieldName = 'DAT_OPLAT'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object dset1prosr: TBooleanField
      DisplayLabel = #1087#1088#1086#1089#1088#1086#1095#1077#1085#1086
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'prosr'
      Calculated = True
    end
    object dset1KUPD_NPR: TFIBIntegerField
      FieldName = 'KUPD_NPR'
    end
    object dset1NOM_REESTR: TFIBIntegerField
      DisplayLabel = #1088#1077#1077#1089#1090#1088
      DisplayWidth = 5
      FieldName = 'NOM_REESTR'
    end
    object dset1DAT_REESTR: TFIBDateTimeField
      DisplayLabel = #1076#1072#1090#1072' '#1088#1077#1077#1089#1090#1088#1072
      DisplayWidth = 10
      FieldName = 'DAT_REESTR'
      DisplayFormat = 'dd.mm.yyyy'
    end
  end
  object tr1: TpFIBTransaction
    Active = True
    DefaultDatabase = db
    Left = 672
    Top = 312
  end
  object ds: TDataSource
    DataSet = dset1
    Left = 608
    Top = 352
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 264
    Top = 128
    object N1: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1054#1087#1083#1072#1090#1099
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1074#1089#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' '#1082#1083#1080#1077#1085#1090#1072
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #1076#1072#1085#1085#1099#1077' '#1082#1083#1080#1077#1085#1090#1072
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #1087#1077#1095#1072#1090#1100' '#1059#1055#1044'/'#1059#1050#1044
      OnClick = N5Click
    end
    object N6: TMenuItem
      Caption = #1053#1055#1056
    end
    object N7: TMenuItem
      Caption = #1082' '#1059#1055#1044
    end
    object N8: TMenuItem
      Caption = #1090#1086#1083#1100#1082#1086' '#1101#1090#1086#1090' '#1088#1077#1077#1089#1090#1088
      OnClick = N8Click
    end
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Path = 'Software\vtk\reestr2'
    Left = 632
    Top = 48
  end
  object PropStorageEh1: TPropStorageEh
    Section = 'grid'
    StorageManager = RegPropStorageManEh1
    StoredProps.Strings = (
      '<P>.Height'
      '<P>.Left'
      '<P>.PixelsPerInch'
      '<P>.Top'
      '<P>.Width'
      'pc.ts1.gr.<P>.Columns.ColumnsIndex'
      'pc.ts1.gr.<P>.Columns.<ForAllItems>.Width'
      'RG.<P>.ItemIndex')
    Left = 664
    Top = 48
  end
  object QrTr: TpFIBTransaction
    Active = True
    DefaultDatabase = db
    Left = 216
    Top = 360
  end
  object Qr: TpFIBQuery
    Transaction = QrTr
    Database = db
    Left = 216
    Top = 328
    qoAutoCommit = True
    qoStartTransaction = True
    qoTrimCharFields = True
    qoNoForceIsNull = True
  end
end
