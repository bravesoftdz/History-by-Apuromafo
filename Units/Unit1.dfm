object Form1: TForm1
  Left = 439
  Top = 274
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'History v1.2 By Apuromafo'
  ClientHeight = 548
  ClientWidth = 880
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object VERSION_Label: TLabel
    Left = 17
    Top = 159
    Width = 35
    Height = 13
    Caption = 'Version'
  end
  object Prog_Label: TLabel
    Left = 8
    Top = 23
    Width = 56
    Height = 13
    Caption = 'Programa : '
  end
  object Fecha_Label: TLabel
    Left = 17
    Top = 191
    Width = 29
    Height = 13
    Caption = 'Fecha'
  end
  object WEB_Label: TLabel
    Left = 17
    Top = 50
    Width = 32
    Height = 13
    Caption = 'Web : '
  end
  object Label1: TLabel
    Left = 25
    Top = 253
    Width = 35
    Height = 13
    Caption = 'Version'
  end
  object Label2: TLabel
    Left = 365
    Top = 386
    Width = 311
    Height = 13
    Caption = 
      'Al terminar la descripci'#243'n  de todas las versiones pulsa Mostrar' +
      ' :)'
  end
  object Fecha: TDateTimePicker
    Left = 81
    Top = 183
    Width = 104
    Height = 21
    Date = 42898.476097789350000000
    Time = 42898.476097789350000000
    DoubleBuffered = False
    ParentDoubleBuffered = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
  end
  object Prog_Edt: TEdit
    Left = 72
    Top = 20
    Width = 209
    Height = 21
    TabOrder = 1
    Text = 'Nombre'
  end
  object WEB_Edt: TEdit
    Left = 72
    Top = 47
    Width = 209
    Height = 21
    TabOrder = 2
    Text = 'http://www.'
  end
  object GenerarBtn: TButton
    Left = 8
    Top = 93
    Width = 252
    Height = 25
    Caption = '1) Generar Encabezado'
    TabOrder = 3
    OnClick = GenerarBtnClick
  end
  object Preview: TMemo
    Left = 365
    Top = 8
    Width = 460
    Height = 360
    Color = clScrollBar
    Lines.Strings = (
      'Bienvenido, Pulsa los botones segun la etapa que necesitas :)')
    ReadOnly = True
    TabOrder = 4
  end
  object Leyenda: TRadioGroup
    Left = 8
    Top = 374
    Width = 201
    Height = 105
    Caption = 'Leyenda'
    ItemIndex = 0
    Items.Strings = (
      '[+] Agregado / Nuevo'
      '[-] Removido'
      '[*] Cambiado'
      '[%] Arreglado(bugs)'
      '[^] Actualizacionesy / o Informaci'#243'n ')
    TabOrder = 5
  end
  object VERSION_Edt: TEdit
    Left = 81
    Top = 156
    Width = 104
    Height = 25
    MaxLength = 24
    TabOrder = 6
    Text = '1.0'
  end
  object VersionBtn: TButton
    Left = 17
    Top = 222
    Width = 243
    Height = 25
    Caption = '2) Agregar Version'
    TabOrder = 7
    OnClick = VersionBtnClick
  end
  object DescripcionBtn: TButton
    Left = 16
    Top = 511
    Width = 193
    Height = 25
    Caption = '3) Agregar Descripci'#243'n a la Version'
    Enabled = False
    TabOrder = 8
    OnClick = DescripcionBtnClick
  end
  object SaveBtn: TButton
    Left = 416
    Top = 453
    Width = 345
    Height = 25
    Caption = '5) Guardar'
    TabOrder = 9
    OnClick = SaveBtnClick
  end
  object ExitBtn: TButton
    Left = 623
    Top = 511
    Width = 138
    Height = 25
    Caption = 'Exit'
    TabOrder = 10
    OnClick = ExitBtnClick
  end
  object Clear: TButton
    Left = 416
    Top = 511
    Width = 201
    Height = 25
    Caption = 'Clear ! Preview'
    TabOrder = 11
    OnClick = ClearClick
  end
  object description_Label: TEdit
    Left = 25
    Top = 484
    Width = 318
    Height = 21
    TabOrder = 12
    Text = 'aqui va la descripcion'
  end
  object CheckListBox1: TCheckListBox
    Left = 17
    Top = 272
    Width = 243
    Height = 96
    ItemHeight = 13
    TabOrder = 13
  end
  object Mostrar: TButton
    Left = 416
    Top = 405
    Width = 337
    Height = 25
    Caption = '4) Mostrar'
    TabOrder = 14
    OnClick = MostrarClick
  end
end
