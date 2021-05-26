program Biblioteca;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitBase in 'UnitBase.pas' {FormBase},
  UnitEditora in 'UnitEditora.pas' {FormEditora},
  UnitAutor in 'UnitAutor.pas' {FormAutor},
  UnitCategoria in 'UnitCategoria.pas' {FormCategoria},
  UnitLivro in 'UnitLivro.pas' {FormLivro},
  UnitPessoa in 'UnitPessoa.pas' {FormPessoa},
  UnitEmprestimoDevolucao in 'UnitEmprestimoDevolucao.pas' {FormBaseEmprestimoDevolucao},
  UnitBaseRel in 'UnitBaseRel.pas' {FormBaseRel},
  UnitRelLivrosCategoria in 'UnitRelLivrosCategoria.pas' {FormRelLivrosCategoria},
  UnitRelLivrosPessoa in 'UnitRelLivrosPessoa.pas' {FormRelLivrosPessoa},
  UnitRelEmprestimosPendentes in 'UnitRelEmprestimosPendentes.pas' {FormRelEmprestimosPendentes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormRelEmprestimosPendentes, FormRelEmprestimosPendentes);
  Application.Run;
end.
