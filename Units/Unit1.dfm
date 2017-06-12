object Form1: TForm1
  Left = 439
  Top = 274
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'History v1.0 By Apuromafo'
  ClientHeight = 455
  ClientWidth = 772
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object VERSION_Label: TLabel
    Left = 8
    Top = 127
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
    Left = 8
    Top = 159
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
  object Fecha: TDateTimePicker
    Left = 72
    Top = 151
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
    Width = 128
    Height = 25
    Caption = 'Generar Encabezado'
    TabOrder = 3
    OnClick = GenerarBtnClick
  end
  object Preview: TMemo
    Left = 288
    Top = 55
    Width = 417
    Height = 242
    Color = clScrollBar
    Lines.Strings = (
      'Bienvenido, Pulsa los botones segun la etapa que necesitas :)')
    ReadOnly = True
    TabOrder = 4
  end
  object Leyenda: TRadioGroup
    Left = 8
    Top = 224
    Width = 210
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
    Left = 72
    Top = 124
    Width = 104
    Height = 21
    TabOrder = 6
    Text = '1.0'
  end
  object VersionBtn: TButton
    Left = 8
    Top = 178
    Width = 128
    Height = 25
    Caption = 'Agregar Version'
    TabOrder = 7
    OnClick = VersionBtnClick
  end
  object DescripcionBtn: TButton
    Left = 8
    Top = 362
    Width = 140
    Height = 25
    Caption = 'Agregar Descripci'#243'n'
    TabOrder = 8
    OnClick = DescripcionBtnClick
  end
  object SaveBtn: TButton
    Left = 344
    Top = 316
    Width = 345
    Height = 25
    Caption = 'Guardar'
    TabOrder = 9
    OnClick = SaveBtnClick
  end
  object ExitBtn: TButton
    Left = 344
    Top = 362
    Width = 345
    Height = 25
    Caption = 'Exit'
    TabOrder = 10
    OnClick = ExitBtnClick
  end
  object Clear: TButton
    Left = 344
    Top = 404
    Width = 345
    Height = 25
    Caption = 'Clear ! Preview'
    TabOrder = 11
    OnClick = ClearClick
  end
  object description_Label: TEdit
    Left = 17
    Top = 335
    Width = 264
    Height = 21
    TabOrder = 12
    Text = 'aqui va la descripcion'
  end
end
