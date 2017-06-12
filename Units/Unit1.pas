{ ********************************************* }
{ Delphi code    By : Apuromafo }
{ This example provide by - Apuromafo.net }
{ version 1.0 coded in RAD Studio }
{ ********************************************* }
unit Unit1;
// 1.    Unit. Hace referencia al nombre del documento de códigos.

interface

// 2.    Interface. Hace constar que lo que le sigue a esa palabra es la interfaz del formulario.
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls;

// 3.    Uses. En esta se especifican los distintos módulos que cargará el programa
// y que se incluirán en el ejecutable una vez compilado para que éste tenga una
// independencia total del compilador.
type
  // 4.    Type.  En esta sección se especificaran los distintos objetos
  // con su correspondiente clase (NombreComponente:TipoComponente),
  // ejemplo: (Label1:TLabel), y los distintos procedimientos que
  // se ejecutarán en el programa.
  TForm1 = class(TForm)
    Fecha: TDateTimePicker;
    Prog_Edt: TEdit;
    VERSION_Label: TLabel;
    WEB_Edt: TEdit;
    Prog_Label: TLabel;
    GenerarBtn: TButton;
    Preview: TMemo;
    Leyenda: TRadioGroup;
    Fecha_Label: TLabel;
    WEB_Label: TLabel;
    VERSION_Edt: TEdit;
    VersionBtn: TButton;
    DescripcionBtn: TButton;
    SaveBtn: TButton;
    ExitBtn: TButton;
    Clear: TButton;
    description_Label: TEdit;
    procedure GenerarBtnClick(Sender: TObject);
    procedure VersionBtnClick(Sender: TObject);
    procedure DescripcionBtnClick(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure ClearClick(Sender: TObject);
    // Al final de ella se verán dos palabras clave “Private” y “Public”,
    // que sirven para definir variables privadas o públicas.
  private
    { Private declarations }
  public
    { Public declarations }
    hola, Programa, version, WEB: String;
    Etapa1: String;

  const
    encabezado1 = '============*{ History }*============';
    encabezado2 = '=================================';
    espacio = ' ';
    opc01 = 'Leyenda:';
    opc02 = '[+] Agregado / Nuevo';
    opc03 = '[-] Removido';
    opc04 = '[*] Cambiado';
    opc05 = '[%] Arreglado(bugs)';
    opc06 = '[^] Actualizacionesy / o Información ';
    opc07 = 'Nombre';
    opc08 = 'http://www.';
    opc09 = '1.0';
    opc10 = 'aqui va la descripción';
    salto = #13#10;
  end;

var
  Form1: TForm1;

  // resourcestring

implementation

{$R *.dfm}

{ *************** Genera Version  ************ }
procedure TForm1.VersionBtnClick(Sender: TObject);
var
  hola: string;
begin
  Preview.Lines.Add(salto + encabezado2);
  hola := version + espacio + VERSION_Edt.Text + espacio;
  hola := hola + FormatDateTime('YYYY-MM-DD', Fecha.Date);
  Preview.Lines.Add(hola);
  Preview.Lines.Add(encabezado2);
  VERSION_Edt.Text := opc09;
end;

procedure TForm1.DescripcionBtnClick(Sender: TObject);
begin
  hola := (Copy((Leyenda.items[Leyenda.ItemIndex]), 1, 4) +
    description_Label.Text);
  Preview.Lines.Add(hola);
  description_Label.Text := opc10;
end;

procedure TForm1.SaveBtnClick(Sender: TObject);
begin
  showmessage('saved to History.txt');
   Preview.Lines.SaveToFile('History.txt',TEncoding.UTF8);
end;

procedure TForm1.ExitBtnClick(Sender: TObject);
begin
  halt;
end;

procedure TForm1.ClearClick(Sender: TObject);
begin
  Preview.Clear;
end;

procedure TForm1.GenerarBtnClick(Sender: TObject);
var
  Leyenda2: String;
begin

  Preview.Lines.Clear; // borro el memo
  Programa := Prog_Label.caption;
  version := VERSION_Label.caption;
  WEB := WEB_Label.caption;
  Preview.Lines.Add(encabezado1 + salto + Programa + Prog_Edt.Text + espacio);
  Preview.Lines.Add(WEB + WEB_Edt.Text + espacio + salto + encabezado2);
  Leyenda2 := opc01 + salto + opc02 + salto;
  Leyenda2 := Leyenda2 + opc03 + salto + opc04 + salto;
  Leyenda2 := Leyenda2 + opc05 + salto + opc06; // + salto;
  Preview.Lines.Add(Leyenda2);
  Prog_Edt.Text := opc07;
  WEB_Edt.Text := opc08;
  VERSION_Edt.Text := opc09;
end;

end.
