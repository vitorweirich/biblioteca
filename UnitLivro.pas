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
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLivro: TFormLivro;

implementation

{$R *.dfm}

end.
