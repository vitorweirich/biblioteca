unit UnitEmprestimoDevolucao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitBase, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, frxClass,
  frxDBSet;

type
  TFormBaseEmprestimoDevolucao = class(TFormBase)
    FDQueryidprestimento: TLargeintField;
    FDQueryidlivro: TLargeintField;
    FDQueryidpessoa: TLargeintField;
    FDQuerydhemprestimo: TSQLTimeStampField;
    FDQuerydhvencimento: TSQLTimeStampField;
    FDQuerydhdevolucao: TSQLTimeStampField;
    FDQuerytitulo: TWideStringField;
    FDQuerynomepessoa: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    ButtonBuscarLivro: TButton;
    ButtonBuscarPessoa: TButton;
    FDQueryLivro: TFDQuery;
    procedure ButtonInserirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonBuscarLivroClick(Sender: TObject);
    procedure ButtonBuscarPessoaClick(Sender: TObject);
    procedure ButtonSalvarClick(Sender: TObject);
    procedure ButtonAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBaseEmprestimoDevolucao: TFormBaseEmprestimoDevolucao;

implementation

{$R *.dfm}

uses UnitLivro, UnitPessoa, UnitPrincipal;

procedure TFormBaseEmprestimoDevolucao.ButtonAlterarClick(Sender: TObject);
begin
  if FDQuery.IsEmpty then
  begin
    ShowMessage('N?o h? nenhum livro para ser devolvido');
    Exit;
  end;
  if not FDQuery.FieldByName('dhdevolucao').IsNull then
  begin
    ShowMessage('Esse livro j? foi devolvido');
    Exit;
  end;

  //('Deseja fazer a devolu??o do livro: ' + FDQuery.FieldByName('titulo').AsString, );
  if MessageDlg('Livro: ' + FDQuery.FieldByName('titulo').AsString + #13
  + 'Cliente: '+ FDQuery.FieldByName('nomepessoa').AsString + #13
  + 'Deseja realizar essa devolu??o?', mtConfirmation, mbYesNo, 0) = mrNo then
  begin
    Exit;
  end;

  FDQuery.Edit;
  FDQuery.FieldByName('dhdevolucao').AsDateTime := Now;
  FDQuery.Post;

  FDQueryLivro.Close;
  FDQueryLivro.ParamByName('idlivro').AsInteger := FDQuery.FieldByName('idlivro').AsInteger;
  FDQueryLivro.Open;

  FDQueryLivro.Edit;
  FDQueryLivro.FieldByName('emprestado').AsInteger := 0;
  FDQueryLivro.Post;

  ShowMessage('Devolu??o realizada com sucesso!');
end;

procedure TFormBaseEmprestimoDevolucao.ButtonBuscarLivroClick(Sender: TObject);
var
  form : TFormLivro;
begin
  form := TFormLivro.Create(Owner);
  form.FDQuery.SQL.Text := Copy(form.FDQuery.SQL.Text, 1, Length(form.FDQuery.SQL.Text) - 22) +
  ' where livro.emprestado = 0 ' + 'order by livro.titulo';
  //ShowMessage(form.FDQuery.SQL.Text);
  form.FDQuery.Active := true;
  form.FDQuery.Refresh;
  form.ButtonSelecionar.Visible := true;
  form.ShowModal;

  if form.ModalResult = mrOk then
  begin
    FDQuery.FieldByName('idlivro').AsInteger := form.FDQuery.FieldByName('idlivro').AsInteger;
    FDQuery.FieldByName('titulo').AsString := form.FDQuery.FieldByName('titulo').AsString;
  end;
  form.Free;

end;

procedure TFormBaseEmprestimoDevolucao.ButtonBuscarPessoaClick(Sender: TObject);
var
  form : TFormPessoa;
begin
  form := TFormPessoa.Create(Owner);
  form.ButtonSelecionar.Visible := true;
  form.ShowModal;

  if form.ModalResult = mrOk then
  begin
    FDQuery.FieldByName('idpessoa').AsInteger := form.FDQuery.FieldByName('idpessoa').AsInteger;
    FDQuery.FieldByName('nomepessoa').AsString := form.FDQuery.FieldByName('nomepessoa').AsString;
  end;
  form.Free;

end;

procedure TFormBaseEmprestimoDevolucao.ButtonInserirClick(Sender: TObject);
begin
  inherited;
  FDQuery.FieldByName('dhemprestimo').AsDateTime := Now;
  FDQuery.FieldByName('dhvencimento').AsDateTime := Date + 7;
end;

procedure TFormBaseEmprestimoDevolucao.ButtonSalvarClick(Sender: TObject);
begin
  if FDQuery.FieldByName('idlivro').AsInteger = 0 then
  begin
    ShowMessage('? obrigat?rio selecionar um livro');
    Exit;
  end;
  if FDQuery.FieldByName('idpessoa').AsInteger = 0 then
  begin
    ShowMessage('? obrigat?rio selecionar uma pessoa');
    Exit;
  end;

  FDQueryLivro.Close;
  FDQueryLivro.ParamByName('idlivro').AsInteger := FDQuery.FieldByName('idlivro').AsInteger;
  FDQueryLivro.Open();
  if FDQueryLivro.FieldByName('emprestado').AsInteger = 1 then
  begin
    ShowMessage('Este livro j? est? emprestado');
    Exit;
  end;

  FDQueryLivro.Edit;
  FDQueryLivro.FieldByName('emprestado').AsInteger := 1;
  FDQueryLivro.Post;

  inherited;

end;

procedure TFormBaseEmprestimoDevolucao.FormCreate(Sender: TObject);
begin
  BASE_CAMPOBUSCA := 'pessoa.nomepessoa';
  inherited;

end;

end.
