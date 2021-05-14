unit UnitEmprestimoDevolucao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitBase, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls;

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
    procedure ButtonInserirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBaseEmprestimoDevolucao: TFormBaseEmprestimoDevolucao;

implementation

{$R *.dfm}

procedure TFormBaseEmprestimoDevolucao.ButtonInserirClick(Sender: TObject);
begin
  inherited;
  FDQuery.FieldByName('dhemprestimo').AsDateTime := Now;
  FDQuery.FieldByName('dhvencimento').AsDateTime := Date + 7;
end;

procedure TFormBaseEmprestimoDevolucao.FormCreate(Sender: TObject);
begin
  BASE_CAMPOBUSCA := 'pessoa.nomepessoa';
  inherited;

end;

end.