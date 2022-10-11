unit uFProblemas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, math,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.WinXPanels, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFProblemas = class(TForm)
    MenuPrincipal: TMainMenu;
    Problemas1: TMenuItem;
    Problemas2: TMenuItem;
    problema1: TMenuItem;
    paginaPrincipal: TPageControl;
    TabConsola: TTabSheet;
    mConsola: TMemo;
    Contenido: TCardPanel;
    cardProblema1: TCard;
    GroupBox1: TGroupBox;
    edNumero4C: TEdit;
    sbCalcularSumaCuatroDigitosF1: TSpeedButton;
    sbCalcularSumaCuatroDigitosF2: TSpeedButton;
    cardProblema2: TCard;
    pExpProb1: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    edValA: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edValB: TEdit;
    Label5: TLabel;
    edValC: TEdit;
    sbResolverEcuacionSegundoGrado: TSpeedButton;
    problema2: TMenuItem;
    cardMenuOpciones: TCard;
    tvMenu: TTreeView;
    problema3: TMenuItem;
    GroupBox3: TGroupBox;
    edNombre: TEdit;
    ablamultiplicarcicloFOR1: TMenuItem;
    cardTablaMultiplicarFOR: TCard;
    GroupBox4: TGroupBox;
    edTM: TEdit;
    sbCalcularTablaMultiplicar: TSpeedButton;
    FactorialdeinNmero1: TMenuItem;
    cardFactorialNumero: TCard;
    GroupBox5: TGroupBox;
    spFactorialNumero: TSpeedButton;
    edNumFact: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure sbCalcularSumaCuatroDigitosF1Click(Sender: TObject);
    procedure sbCalcularSumaCuatroDigitosF2Click(Sender: TObject);
    procedure sbResolverEcuacionSegundoGradoClick(Sender: TObject);
    procedure problema1Click(Sender: TObject);
    procedure problema2Click(Sender: TObject);
    procedure problema3Click(Sender: TObject);
    procedure tvMenuClick(Sender: TObject);
    procedure ablamultiplicarcicloFOR1Click(Sender: TObject);
    procedure sbCalcularTablaMultiplicarClick(Sender: TObject);
    procedure edTMKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FactorialdeinNmero1Click(Sender: TObject);
    procedure spFactorialNumeroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProblemas: TFProblemas;

implementation

{$R *.dfm}

procedure TFProblemas.ablamultiplicarcicloFOR1Click(Sender: TObject);
begin
  Contenido.ActiveCard := cardTablaMultiplicarFOR;
end;

procedure TFProblemas.edTMKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = $0D then
  begin
    sbCalcularTablaMultiplicarClick(self);
  end;
end;

procedure TFProblemas.FactorialdeinNmero1Click(Sender: TObject);
begin
  Contenido.ActiveCard := cardFactorialNumero;
end;

procedure TFProblemas.problema1Click(Sender: TObject);
begin
  Contenido.ActiveCard := cardProblema1;
end;

procedure TFProblemas.problema2Click(Sender: TObject);
begin
  Contenido.ActiveCard := cardProblema2;
end;

procedure TFProblemas.problema3Click(Sender: TObject);
begin
  Contenido.ActiveCard := cardMenuOpciones;

  tvMenu.Items.Add(nil, 'Lunes');
  tvMenu.Items.Add(nil, 'Martes');
  tvMenu.Items.Add(nil, 'Miércoles');
  tvMenu.Items.Add(nil, 'Jueves');
  tvMenu.Items.Add(nil, 'Viernes');
  tvMenu.Items.Add(nil, 'Sábado');
  tvMenu.Items.Add(nil, 'Domingo');
end;

procedure TFProblemas.sbCalcularSumaCuatroDigitosF1Click(Sender: TObject);
var
  num: integer;
  a, b, c, d, suma: integer;
begin
  // Borrar la consola de mensajes = 1234
  mConsola.Lines.Clear;

  num := StrToInt(edNumero4C.Text);
  a := num div 1000;
  num := num - 1000 * a;
  b := num div 100;
  num := num - 100 * b;
  c := num div 10;
  d := num - 10 * c;

  suma := a + b + c + d;

  mConsola.Lines.Add('La suma de las dígitos del número de cuatro cifras (' +
    edNumero4C.Text + ') es = ' + IntToStr(suma));
end;

procedure TFProblemas.sbCalcularSumaCuatroDigitosF2Click(Sender: TObject);
var
  suma: integer;
begin
  // Borrar la consola de mensajes = 1234
  // mConsola.Lines.Clear;

  suma := StrToInt(Copy(edNumero4C.Text, 1, 1));
  suma := suma + StrToInt(Copy(edNumero4C.Text, 2, 1));
  suma := suma + StrToInt(Copy(edNumero4C.Text, 3, 1));
  suma := suma + StrToInt(Copy(edNumero4C.Text, 4, 1));

  mConsola.Lines.Add('La suma de las dígitos del número de cuatro cifras (' +
    edNumero4C.Text + ') es = ' + IntToStr(suma));
end;

procedure TFProblemas.sbCalcularTablaMultiplicarClick(Sender: TObject);
var
  i, t, n: integer;
begin
  mConsola.Lines.Clear;
  n := StrToInt(edTM.Text);

  for i := 1 to 10 do
  begin
    t := n * i;
    mConsola.Lines.Add(IntToStr(n) + ' x ' + IntToStr(i) + ' = ' + IntToStr(t));
  end;
end;

procedure TFProblemas.sbResolverEcuacionSegundoGradoClick(Sender: TObject);
var
  a, b, c, disc, x1, x2, w, z: real;
begin
  a := StrToFloat(edValA.Text);
  b := StrToFloat(edValB.Text);
  c := StrToFloat(edValC.Text);

  disc := Power(b, 2) - 4 * a * c;

  if disc = 0 then
  begin
    mConsola.Lines.Add('La ecuación tiene una única solución');
    x1 := -b / (2 * a);
    mConsola.Lines.Add('x1 = ' + FloatToStr(x1));
  end;

  if disc > 0 then
  begin
    mConsola.Lines.Add('La ecuación tiene dos soluciones');
    x1 := (-b + sqrt(disc)) / (2 * a);
    x2 := (-b - sqrt(disc)) / (2 * a);
    mConsola.Lines.Add('x1 = ' + FloatToStr(x1) + '; x2 = ' + FloatToStr(x2));
  end;

  if disc < 0 then
  begin
    { a + bi }
    mConsola.Lines.Add('La ecuación tiene solución en los complejos');
    w := -b / (2 * a);
    z := sqrt(abs(disc)) / (2 * a);
    // w + zi
    mConsola.Lines.Add('x1 = ' + FloatToStr(w) + '+' + FloatToStr(z) +
      'i; x2 = ' + FloatToStr(w) + '-' + FloatToStr(z) + 'i');
  end;

end;

procedure TFProblemas.spFactorialNumeroClick(Sender: TObject);
var
  n: integer;
  fact: LONG64;
  i: integer;
begin
  fact := 1;
  n := StrToInt(edNumFact.Text);

  for i := 1 to n do
  begin
    fact := fact * i;
  end;

  mConsola.Lines.Clear;
  mConsola.Lines.Add('El factorial de ' + IntToStr(n) + ' es ' +
    IntToStr(fact));
end;

procedure TFProblemas.tvMenuClick(Sender: TObject);
var
  dia, nombre: string;
begin
  nombre := edNombre.Text;

  if tvMenu.Selected <> nil then
  begin
    dia := tvMenu.Selected.Text;

    if dia = 'Lunes' then
    begin
      mConsola.Lines.Add('Hola ' + nombre + ', hoy ' + dia +
        ' tenemos el siguiente menú:');
      mConsola.Lines.Add(' 1. Bandeja Paisa');
      mConsola.Lines.Add(' 2. Sudado de pollo');
      mConsola.Lines.Add(' 3. Trucha');
    end;

    if dia = 'Martes' then
    begin
      mConsola.Lines.Add('Hola ' + nombre + ', hoy ' + dia +
        ' tenemos el siguiente menú:');
      mConsola.Lines.Add(' 1. Sopa de pollo');
      mConsola.Lines.Add(' 2. Pasta');
      mConsola.Lines.Add(' 3. Pizza');
    end;
  end;
end;

end.
