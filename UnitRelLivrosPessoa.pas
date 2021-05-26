unit UnitRelLivrosPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitBaseRel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxDBSet, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormRelLivrosPessoa = class(TFormBaseRel)
    EditNome: TEdit;
    EditCodigo: TEdit;
    ButtonBuscar: TButton;
    procedure ButtonBuscarClick(Sender: TObject);
    procedure ButtonImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelLivrosPessoa: TFormRelLivrosPessoa;

implementation

{$R *.dfm}

uses UnitPessoa;

procedure TFormRelLivrosPessoa.ButtonBuscarClick(Sender: TObject);
var
  form : TFormPessoa;
begin
  form := TFormPessoa.Create(Owner);
  form.ButtonSelecionar.Visible := true;
  form.ShowModal;

  if form.ModalResult = mrOk then
  begin
    EditCodigo.Text := form.FDQuery.FieldByName('idpessoa').AsString;
    EditNome.Text := form.FDQuery.FieldByName('nomepessoa').AsString;
  end;
  form.Free;

end;

procedure TFormRelLivrosPessoa.ButtonImprimirClick(Sender: TObject);
begin
  if EditCodigo.Text = '' then
  begin
    ShowMessage('Selecione uma pessoa!');
    Exit;
  end;
  FDQuery.Close;
  FDQuery.ParamByName('idpessoa').AsInteger := StrToInt(EditCodigo.Text);


  inherited;
end;

end.
