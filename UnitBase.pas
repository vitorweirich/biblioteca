unit UnitBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormBase = class(TForm)
    PageControl1: TPageControl;
    TabSheetConsulta: TTabSheet;
    TabSheetCadastro: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    EditBusca: TEdit;
    ButtonBusca: TButton;
    ButtonInserir: TButton;
    ButtonAlterar: TButton;
    ButtonExcluir: TButton;
    ButtonImprimir: TButton;
    ButtonFechar: TButton;
    ButtonSelecionar: TButton;
    Panel3: TPanel;
    ButtonSalvar: TButton;
    ButtonCancelar: TButton;
    ButtonFechar2: TButton;
    FDQuery: TFDQuery;
    DataSource: TDataSource;
    procedure ButtonFecharClick(Sender: TObject);
    procedure ButtonInserirClick(Sender: TObject);
    procedure ButtonAlterarClick(Sender: TObject);
    procedure ButtonSalvarClick(Sender: TObject);
    procedure ButtonCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonExcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirTab(n: Integer);
  public
    { Public declarations }
  end;

var
  FormBase: TFormBase;

implementation

{$R *.dfm}

uses UnitPrincipal;

procedure TFormBase.ButtonAlterarClick(Sender: TObject);
begin
  ExibirTab(1);
  FDQuery.Edit;
end;

procedure TFormBase.ButtonCancelarClick(Sender: TObject);
begin
  ExibirTab(0);
  FDQuery.Cancel;
end;

procedure TFormBase.ButtonExcluirClick(Sender: TObject);
begin
  FDQuery.Delete;
end;

procedure TFormBase.ButtonFecharClick(Sender: TObject);
begin
 Close;
end;

procedure TFormBase.ButtonInserirClick(Sender: TObject);
begin
  ExibirTab(1);
  FDQuery.Append;
end;

procedure TFormBase.ButtonSalvarClick(Sender: TObject);
begin
  FDQuery.Post;
  ExibirTab(0);
  //FDQuery.Post;
end;

procedure TFormBase.ExibirTab(n: Integer);
begin
  TabSheetConsulta.TabVisible := (not (n = 1));
  TabSheetCadastro.TabVisible := (n = 1);
  if n = 0 then
  begin
    FDQuery.Refresh;
  end;
  PageControl1.ActivePageIndex := n;
//  if n = 1 then
//  begin
//    TabSheetConsulta.TabVisible := n = 1;
//    TabSheetCadastro.TabVisible := (not (n = 1));
//  end
//  else
//  begin
//
//  end;


end;

procedure TFormBase.FormCreate(Sender: TObject);
begin
  ExibirTab(0);
end;

end.
