program Primer_Proyecto;

uses
  Vcl.Forms,
  uFPrimerPrograma in 'uFPrimerPrograma.pas' {FPrimerPrograma};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrimerPrograma, FPrimerPrograma);
  Application.Run;
end.
