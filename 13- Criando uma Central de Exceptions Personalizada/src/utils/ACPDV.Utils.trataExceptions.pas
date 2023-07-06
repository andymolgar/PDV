unit ACPDV.Utils.trataExceptions;

interface

uses
  Vcl.Forms,
  System.SysUtils,
  System.Classes,
  Vcl.Graphics,
  Vcl.Imaging.jpeg, ACPDV.View.Componente.Mensagens, Vcl.ExtCtrls;

type
  TException = class
    private
      FLogFile : string;
      FApplicationPath : string;
      FLogPath : string;
      FLogImages : string;

      procedure GravarImagemFormulario(const aNomeArquivo : string; aFormulario : tForm);
      procedure GravarLog(aInfo, aMensagem : string);
      procedure TrataException(Sender : TObject; E : Exception);
      procedure TrataMensagem(OWner : TComponent; E : Exception);

    public
      constructor Create;
  end;

implementation

{ TException }

constructor TException.Create;
begin
  FApplicationPath := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)));
  FLogPath := IncludeTrailingPathDelimiter(FApplicationPath + 'LOGS');
  FLogImages := IncludeTrailingPathDelimiter(FLogPath + 'IMAGES');
  FLogFile := FLogPath + ExtractFileName(ChangeFileExt(ParamStr(0), '')) + '.log';

  ForceDirectories(FLogPath);
  ForceDirectories(FLogImages);

  Application.OnException := TrataException;
end;

procedure TException.GravarImagemFormulario(const aNomeArquivo : string;
  aFormulario: tForm);
var
  lBitmap : tBitmap;
  lJpg : tJpegImage;
begin
  lBitmap := TBitmap.Create;
  lJpg := TJPEGImage.Create;

  try
    lBitmap.Assign(aFormulario.GetFormImage);
    lJpg.Assign(lBitmap);
    lJpg.SaveToFile(Format('%s\%s.jpg', [FLogImages, aNomeArquivo]));
  finally
    lBitmap.DisposeOf;
    lJpg.DisposeOf;
  end;
end;

procedure TException.GravarLog(aInfo, aMensagem: string);
var
  lArq : TextFile;
begin
  AssignFile(lArq, FLogFile);
  if not FileExists(FLogFile) then
    Rewrite(lArq)
  else
    Append(lArq);

  Writeln(lArq, aInfo + aMensagem);
  CloseFile(lArq);
end;

procedure TException.TrataException(Sender: TObject; E: Exception);
var
  lDataHora : string;
begin
  lDataHora := FormatDateTime('ddmmyyhhmmss', Now);
  GravarLog('[Data/hora........] ', FormatDateTime('dd/mm/yyyy hh:mm:ss', now));
  GravarLog('[Mensagem.........] ', E.Message);
  GravarLog('[Classe Exceção...] ', E.ClassName);

  if (TComponent(Sender) is TForm) then
    GravarLog('[Formulário.......] ', TForm(Sender).Name)
  else
    GravarLog('[Formulário.......] ', TForm(TComponent(Sender).Owner).Name);

  GravarLog('[Unit.............] ', Sender.UnitName);
  GravarLog('[Componente Visual] ', Screen.ActiveControl.Name);
  GravarLog('', StringOfChar('-', 70));
  GravarLog('', '');

  GravarImagemFormulario(lDataHora, Screen.ActiveForm);
  TrataMensagem(TComponent(Sender).Owner, E);
end;


procedure TException.TrataMensagem(OWner: TComponent; E: Exception);
var
  lMensagem : TpageMensagem;
  lPanel : TPanel;
  I : Integer;
begin
  lMensagem := TpageMensagem.New(OWner);

  if TForm(OWner).Parent <> nil then
    lMensagem.Embed(TPanel(TForm(OWner).Parent))
  else
  begin
    lPanel := TPanel(TForm(OWner).Controls[0]);

    for I := Pred(lPanel.ControlCount) downto 0 do
        if (lPanel.Controls[I] is TPanel) and (lPanel.Controls[I].Tag = 255) then
          lMensagem.Embed(TPanel(lPanel.Controls[I]));

  end;

  if E is EConvertError then
    lMensagem
      .Mensagem('Erro de conversão de dados', ERRO)
      .ClickOk(procedure(Sender : TObject)
      begin
        ///
      end);
end;

var
  MinhasExcecoes : TException;

initialization
  MinhasExcecoes := TException.Create;

finalization
  FreeAndNil(MinhasExcecoes);

end.
