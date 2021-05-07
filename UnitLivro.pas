unit UnitLivro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitBase, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFormLivro = class(TFormBase)
    FDQueryidlivro: TLargeintField;
    FDQuerytitulo: TWideStringField;
    FDQueryanopublicacao: TIntegerField;
    FDQuerynumeropaginas: TIntegerField;
    FDQuerynumeroedicao: TIntegerField;
    FDQueryemprestado: TIntegerField;
    FDQueryresumo: TWideMemoField;
    FDQueryideditora: TLargeintField;
    FDQueryidcategoria: TLargeintField;
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
    Label7: TLabel;
    DBMemo1: TDBMemo;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    FDQuerynomeeditora: TWideStringField;
    FDQuerynomecategoria: TWideStringField;
    FDQuerynomeemprestado: TWideMemoField;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    ButtonBuscarEditora: TButton;
    ButtonBuscarCategoria: TButton;
    Label11: TLabel;
    DBMemo2: TDBMemo;
    PanelAutores: TPanel;
    DBGrid2: TDBGrid;
    ButtonAdicionarAutor: TButton;
    ButtonExcluirAutor: TButton;
    FDQueryAutores: TFDQuery;
    DataSourceAutores: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure ButtonBuscarEditoraClick(Sender: TObject);
    procedure ButtonBuscarCategoriaClick(Sender: TObject);
    procedure ButtonInserirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLivro: TFormLivro;

implementation

{$R *.dfm}

uses UnitAutor, UnitCategoria, UnitEditora, UnitPrincipal;

procedure TFormLivro.ButtonBuscarCategoriaClick(Sender: TObject);
var
  form: TFormCategoria;
begin
  form := TFormCategoria.Create(Self);
  form.ButtonSelecionar.Visible := true;
  if form.ShowModal = mrOk then
  begin
    FDQuery.FieldByName('idcategoria').AsInteger := form.FDQuery.FieldByName('idcategoria').AsInteger;
    FDQuery.FieldByName('nomecategoria').AsString := form.FDQuery.FieldByName('nomecategoria').AsString;
  end;

  form.Free;
end;

procedure TFormLivro.ButtonBuscarEditoraClick(Sender: TObject);
var
  form: TFormEditora;
begin
  form := TFormEditora.Create(Self);
  form.ButtonSelecionar.Visible := true;
  if form.ShowModal = mrOk then
  begin
    FDQuery.FieldByName('ideditora').AsInteger := form.FDQuery.FieldByName('ideditora').AsInteger;
    FDQuery.FieldByName('nomeeditora').AsString := form.FDQuery.FieldByName('nomeeditora').AsString;
  end;

  form.Free;
end;

procedure TFormLivro.ButtonInserirClick(Sender: TObject);
begin
  inherited;
  FDQuery.FieldByName('emprestado').AsInteger := 0;
end;

procedure TFormLivro.FormCreate(Sender: TObject);
begin
  BASE_CAMPOBUSCA := 'livro.titulo';
  inherited;

end;

end.
