object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Biblioteca'
  ClientHeight = 473
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LabelUsuario: TLabel
    Left = 0
    Top = 0
    Width = 751
    Height = 23
    Align = alTop
    Alignment = taRightJustify
    Caption = 'LabelUsuario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 645
    ExplicitWidth = 106
  end
  object MainMenu1: TMainMenu
    Left = 512
    Top = 8
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Pessoas1: TMenuItem
        Caption = 'Pessoa'
        OnClick = Pessoas1Click
      end
      object Livro1: TMenuItem
        Caption = 'Livro'
        OnClick = Livro1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Autor1: TMenuItem
        Caption = 'Autor'
        OnClick = Autor1Click
      end
      object Categoria1: TMenuItem
        Caption = 'Categoria'
        OnClick = Categoria1Click
      end
      object Editora1: TMenuItem
        Caption = 'Editora'
        OnClick = Editora1Click
      end
    end
    object Operao1: TMenuItem
      Caption = 'Opera'#231#227'o'
      object Emprstimo1: TMenuItem
        Caption = 'Empr'#233'stimo e Devolu'#231#227'o'
        OnClick = Emprstimo1Click
      end
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
      object LivrosporCategoria1: TMenuItem
        Caption = 'Livros por Categoria'
        OnClick = LivrosporCategoria1Click
      end
      object LivrosporPessoa1: TMenuItem
        Caption = 'Livros por Pessoa'
        OnClick = LivrosporPessoa1Click
      end
      object EmprstimosPendentes1: TMenuItem
        Caption = 'Empr'#233'stimos Pendentes'
        OnClick = EmprstimosPendentes1Click
      end
    end
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=biblioteca'
      'User_Name=postgres'
      'Password=postgres'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 512
    Top = 64
  end
  object FDPhysPgDriverLink: TFDPhysPgDriverLink
    VendorLib = 'D:\DELL\Downloads\psqlodbc_12_02_0000\psqlodbc\libpq.dll'
    Left = 512
    Top = 120
  end
end
