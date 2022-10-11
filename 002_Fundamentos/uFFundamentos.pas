unit uFFundamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, math, shellapi,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Menus;

type
  TFFundamentos = class(TForm)
    pcMenuPrincipal: TPageControl;
    TabArchivo: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    sbSumarNumeros: TSpeedButton;
    Panel3: TPanel;
    sbOperaciones: TSpeedButton;
    Panel4: TPanel;
    Panel5: TPanel;
    gbNum2: TGroupBox;
    edNum2: TEdit;
    gbNum1: TGroupBox;
    edNum1: TEdit;
    Panel6: TPanel;
    sbCalcularTeoremaPitagoras: TSpeedButton;
    Panel7: TPanel;
    Panel8: TPanel;
    gbCatB: TGroupBox;
    edCatB: TEdit;
    gbCatA: TGroupBox;
    edCatA: TEdit;
    Panel9: TPanel;
    sbOperacionesCadenasTexto: TSpeedButton;
    Panel10: TPanel;
    Saludar: TSpeedButton;
    Panel11: TPanel;
    sbTipoVariant: TSpeedButton;
    Panel12: TPanel;
    mmMenuPrincipal: TMainMenu;
    Archivo1: TMenuItem;
    Nmeros1: TMenuItem;
    Calculadora1: TMenuItem;
    eoremadePitgoras1: TMenuItem;
    CadenasdeTexto1: TMenuItem;
    Variant1: TMenuItem;
    Sumarnmeros1: TMenuItem;
    Operarnmeros1: TMenuItem;
    CalcularTeoremadePitgoras1: TMenuItem;
    Saludar1: TMenuItem;
    Operaciones1: TMenuItem;
    OpcionesdeVariant1: TMenuItem;
    TabSheet1: TTabSheet;
    Panel13: TPanel;
    sbVerMenu: TSpeedButton;
    Panel14: TPanel;
    Ver1: TMenuItem;
    Mensecundario1: TMenuItem;
    sbFormatoReales: TSpeedButton;
    Panel15: TPanel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    paginaContenido: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    mSalida: TMemo;
    mSalidaTexto: TMemo;
    paginaIOpcionesTexto: TPageControl;
    TabSheet4: TTabSheet;
    ScrollBox1: TScrollBox;
    Panel16: TPanel;
    GroupBox1: TGroupBox;
    edTextoInicial: TEdit;
    GroupBox2: TGroupBox;
    edTextoFinal: TEdit;
    sbConcatenar: TSpeedButton;
    Panel17: TPanel;
    GroupBox3: TGroupBox;
    edCopiar: TEdit;
    GroupBox4: TGroupBox;
    edPos: TEdit;
    edCant: TEdit;
    sbCopiarTexto: TSpeedButton;
    Panel18: TPanel;
    GroupBox5: TGroupBox;
    edMayMin: TEdit;
    sbConvertirTexto: TSpeedButton;
    Panel19: TPanel;
    GroupBox6: TGroupBox;
    sbReemplazar: TSpeedButton;
    mTextoReemplazar: TMemo;
    GroupBox7: TGroupBox;
    edCambiarA: TEdit;
    edReemplazoB: TEdit;
    Panel20: TPanel;
    GroupBox8: TGroupBox;
    edClave: TEdit;
    sbGenerarClave: TSpeedButton;
    procedure sbSumarNumerosClick(Sender: TObject);
    procedure sbOperacionesClick(Sender: TObject);
    procedure edNum2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sbCalcularTeoremaPitagorasClick(Sender: TObject);
    procedure SaludarClick(Sender: TObject);
    procedure sbOperacionesCadenasTextoClick(Sender: TObject);
    procedure sbTipoVariantClick(Sender: TObject);
    procedure sbVerMenuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbFormatoRealesClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbConcatenarClick(Sender: TObject);
    procedure sbCopiarTextoClick(Sender: TObject);
    procedure sbConvertirTextoClick(Sender: TObject);
    procedure sbReemplazarClick(Sender: TObject);
    procedure sbGenerarClaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFundamentos: TFFundamentos;

implementation

{$R *.dfm}

procedure TFFundamentos.edNum2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = $0D then
  begin
    sbOperacionesClick(Self);
  end;
end;

procedure TFFundamentos.FormCreate(Sender: TObject);
begin
  pcMenuPrincipal.TabIndex := 0;
end;

procedure TFFundamentos.SaludarClick(Sender: TObject);
var
  nombre: string;
begin
  nombre := 'Julián Andrés Rincón Penagos';
  ShowMessage('Hola, ' + nombre);
end;

procedure TFFundamentos.sbCalcularTeoremaPitagorasClick(Sender: TObject);
var
  a, b, h: real; { Definimos las variables para resolver el problema }
begin
  { Obtener valores de las cajas }
  a := StrToFloat(edCatA.Text);
  b := StrToFloat(edCatB.Text);

  h := sqrt(power(a, 2) + power(b, 2));

  mSalida.Lines.Add('=========== Teorema de Pitágoras ========');
  mSalida.Lines.Add('Cateto A = ' + FloatToStr(a) + ' y Cateto B = ' +
    FloatToStr(b) + ' generar la Hipotenusa H = ' + FloatToStr(h));
end;

procedure TFFundamentos.sbConcatenarClick(Sender: TObject);
var
  texto1, texto2, textoFinal: string;
begin
  mSalidaTexto.Lines.Clear;
  mSalidaTexto.Lines.Add('Concatenando textos ...');

  texto1 := edTextoInicial.Text;
  texto2 := edTextoFinal.Text;
  textoFinal := texto1 + texto2;

  mSalidaTexto.Lines.Add(textoFinal);
end;

procedure TFFundamentos.sbConvertirTextoClick(Sender: TObject);
var
  texto: string;
begin
  { Conversión de textos }
  mSalidaTexto.Lines.Clear;

  texto := edMayMin.Text;

  mSalidaTexto.Lines.Add(LowerCase(texto));
  mSalidaTexto.Lines.Add(UpperCase(texto));

  mSalidaTexto.Lines.Add(AnsiLowerCase(texto));
  mSalidaTexto.Lines.Add(AnsiUpperCase(texto));
end;

procedure TFFundamentos.sbCopiarTextoClick(Sender: TObject);
var
  p, c: integer;
  texto, copiado: string;
begin
  p := StrToInt(edPos.Text);
  c := StrToInt(edCant.Text);

  texto := edCopiar.Text;

  // Operación de copiar
  copiado := Copy(texto, p, c);

  mSalidaTexto.Lines.Clear;
  mSalidaTexto.Lines.Add('Copiando texto ...');
  mSalidaTexto.Lines.Add('Se copio (' + copiado + ') de (' + texto + ')');
end;

procedure TFFundamentos.sbFormatoRealesClick(Sender: TObject);
var
  numero: real;
  hh, mm, ss: integer;
begin
  mSalida.Lines.Add('===================================');
  mSalida.Lines.Add('Formateando números reales');

  numero := 123456789123456.12;

  mSalida.Lines.Add(FloatToStr(numero));

  mSalida.Lines.Add(FloatToStrF(numero, ffNumber, 4, 0));
  mSalida.Lines.Add(FloatToStrF(numero, ffNumber, 8, 0));
  mSalida.Lines.Add(FloatToStrF(numero, ffNumber, 12, 0));
  mSalida.Lines.Add(FloatToStrF(numero, ffNumber, 16, 0));
  mSalida.Lines.Add(FloatToStrF(numero, ffNumber, 16, 2));
  mSalida.Lines.Add(FloatToStrF(numero, ffNumber, 16, 4));

  mSalida.Lines.Add('Formateando números reales - dinero');

  numero := 12528458.25;

  mSalida.Lines.Add(FloatToStrF(numero, ffCurrency, 16, 2));

  mSalida.Lines.Add('Formateando números reales - pequeños');

  numero := 0.000000001458;
  mSalida.Lines.Add(FloatToStrF(numero, ffNumber, 16, 15));

  mSalida.Lines.Add('Formateando números en cadenas de texto');
  hh := 3;
  mm := 5;
  ss := 7;
  mSalida.Lines.Add(IntToStr(hh) + ' : ' + IntToStr(mm) + ' : ' + IntToStr(ss));
  mSalida.Lines.Add(FormatCurr('00', hh) + ' : ' + FormatCurr('00', mm) + ' : '
    + FormatCurr('00', ss));

  numero := 20878325;
  mSalida.Lines.Add(FormatCurr('COP 000,000,000,000', numero));
  mSalida.Lines.Add(FormatCurr('COP 000-000-000-000', numero));
end;

procedure TFFundamentos.sbGenerarClaveClick(Sender: TObject);
var
  clave: string;
begin
  { Generar claves }
  clave := edClave.Text;

  clave := StringReplace(clave, 'a', '4', [rfReplaceAll, rfIgnoreCase]);
  clave := StringReplace(clave, 'e', '3', [rfReplaceAll, rfIgnoreCase]);
  clave := StringReplace(clave, 'i', '1', [rfReplaceAll, rfIgnoreCase]);
  clave := StringReplace(clave, 'o', '0', [rfReplaceAll, rfIgnoreCase]);
  clave := StringReplace(clave, 'u', '?', [rfReplaceAll, rfIgnoreCase]);
  clave := StringReplace(clave, 't', '7', [rfReplaceAll, rfIgnoreCase]);
  clave := StringReplace(clave, ' ', '-', [rfReplaceAll, rfIgnoreCase]);
  clave := StringReplace(clave, 'n', '#', [rfReplaceAll, rfIgnoreCase]);

  mSalidaTexto.Lines.Clear;
  mSalidaTexto.Lines.Add(clave);
end;

procedure TFFundamentos.sbOperacionesCadenasTextoClick(Sender: TObject);
var
  letra1: Char;
  letra2: AnsiChar;
  letra3: WideChar;
  texto1: string;
  texto2: AnsiString;
  texto3: WideString;
begin
  letra1 := 'p';
  letra2 := 'q';
  letra3 := '☺';

  texto1 := '♠ Bienvenido a la programación con Delphi Rad Studio ☺♠';
  texto2 := '♣♠ Bienvenido a la programación con Delphi Rad Studio ♣♠';
  texto3 := '♫♫♠ Bienvenido a la programación con Delphi Rad Studio ♫♫♠';

  mSalida.Lines.Add('===================================');
  mSalida.Lines.Add('Caracteres');
  mSalida.Lines.Add(letra1);
  mSalida.Lines.Add(letra2);
  mSalida.Lines.Add(letra3);

  mSalida.Lines.Add('');
  mSalida.Lines.Add('===================================');
  mSalida.Lines.Add('Textos');
  mSalida.Lines.Add(texto1);
  mSalida.Lines.Add(texto2);
  mSalida.Lines.Add(texto3);

end;

procedure TFFundamentos.sbOperacionesClick(Sender: TObject);
var
  a, b, c: integer; { se definen las variables de tipo integer
    que van desde -2147483648..2147483647; }
  d: real;
begin
  { Tomar los valores de las cajas de texto mediante la función
    String To Integer => StrToInt }
  a := StrToInt(edNum1.Text);
  b := StrToInt(edNum2.Text);

  mSalida.Lines.Add('============= Calculadora================');

  c := a + b;
  mSalida.Lines.Add(IntToStr(a) + ' + ' + IntToStr(b) + ' = ' + IntToStr(c));

  c := a - b;
  mSalida.Lines.Add(IntToStr(a) + ' - ' + IntToStr(b) + ' = ' + IntToStr(c));

  c := a * b;
  mSalida.Lines.Add(IntToStr(a) + ' * ' + IntToStr(b) + ' = ' + IntToStr(c));

  // Esta línea corresponde al video 005
  d := a / b;
  mSalida.Lines.Add(IntToStr(a) + ' / ' + IntToStr(b) + ' = ' + FloatToStr(d));
end;

procedure TFFundamentos.sbReemplazarClick(Sender: TObject);
var
  texto, reemplazado: string;
begin
  { Reemplazar texto }
  mSalidaTexto.Lines.Clear;
  mSalidaTexto.Lines.Add('Reemplazando Texto ...');

  texto := mTextoReemplazar.Text;
  reemplazado := StringReplace(texto, edCambiarA.Text, edReemplazoB.Text,
    [rfReplaceAll, rfIgnoreCase]);

  mSalidaTexto.Lines.Add(reemplazado);
end;

procedure TFFundamentos.sbSumarNumerosClick(Sender: TObject);
var
  a, b, c: Word; { se estan definiendo los tipos de variable de tipo entero
    que contiene valores entre 0 y 65535 }
begin
  a := 5478;
  b := 6234;

  // Definimos la suma Ctrl+D: para organizar código (indentar)
  c := a + b;

  // Mostrar en pantalla => Integer To String IntToStr
  // ¿Cómo se convierte?, 123 + 412 = 535
  mSalida.Lines.Add(IntToStr(a) + ' + ' + IntToStr(b) + ' = ' + IntToStr(c));
end;

procedure TFFundamentos.sbTipoVariantClick(Sender: TObject);
var
  variable: Variant;
begin
  // Mostrar el valor en la pantalla
  mSalida.Lines.Add('variable = ' + VarToStr(variable));

  variable := '♣';
  mSalida.Lines.Add('variable = ' + VarToStr(variable));

  variable := 'Este es el curso de Delphi de Cero a Experto';
  mSalida.Lines.Add('variable = ' + VarToStr(variable));

  variable := 1996;
  mSalida.Lines.Add('variable = ' + VarToStr(variable));

  variable := 1996.8908;
  mSalida.Lines.Add('variable = ' + VarToStr(variable));

  variable := true;
  mSalida.Lines.Add('variable = ' + VarToStr(variable));

  variable := false;
  mSalida.Lines.Add('variable = ' + VarToStr(variable));

  variable := now;
  mSalida.Lines.Add('variable = ' + VarToStr(variable));
end;

procedure TFFundamentos.sbVerMenuClick(Sender: TObject);
begin
  pcMenuPrincipal.Visible := not pcMenuPrincipal.Visible;
end;

procedure TFFundamentos.SpeedButton1Click(Sender: TObject);
begin
  { Cambiar a un cardpanel diferente para realizar las operaciones
    con cadenas de texto }
  paginaContenido.TabIndex := 1;
end;

end.
