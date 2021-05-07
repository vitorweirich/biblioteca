inherited FormLivro: TFormLivro
  Caption = 'Livros'
  ClientHeight = 514
  ClientWidth = 759
  ExplicitWidth = 775
  ExplicitHeight = 553
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 759
    Height = 514
    ExplicitWidth = 759
    ExplicitHeight = 514
    inherited TabSheetConsulta: TTabSheet
      ExplicitWidth = 751
      ExplicitHeight = 486
      inherited Panel1: TPanel
        Width = 751
        ExplicitWidth = 751
        inherited EditBusca: TEdit
          Width = 621
          Height = 21
          ExplicitWidth = 621
          ExplicitHeight = 21
        end
        inherited ButtonBusca: TButton
          Left = 652
          ExplicitLeft = 652
        end
      end
      inherited Panel2: TPanel
        Top = 445
        Width = 751
        ExplicitTop = 445
        ExplicitWidth = 751
        inherited ButtonFechar: TButton
          Left = 652
          ExplicitLeft = 652
        end
        inherited ButtonSelecionar: TButton
          Left = 573
          ExplicitLeft = 573
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 751
        Height = 404
      end
    end
    inherited TabSheetCadastro: TTabSheet
      ExplicitWidth = 751
      ExplicitHeight = 486
      object Label1: TLabel [0]
        Left = 24
        Top = 16
        Width = 74
        Height = 13
        Caption = 'C'#243'digo do Livro'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 24
        Top = 56
        Width = 26
        Height = 13
        Caption = 'T'#237'tulo'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [2]
        Left = 24
        Top = 96
        Width = 50
        Height = 13
        Caption = 'Publica'#231#227'o'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [3]
        Left = 24
        Top = 136
        Width = 52
        Height = 13
        Caption = 'N'#186' P'#225'ginas'
        FocusControl = DBEdit4
      end
      object Label5: TLabel [4]
        Left = 24
        Top = 176
        Width = 46
        Height = 13
        Caption = 'N'#186' Edi'#231#227'o'
        FocusControl = DBEdit5
      end
      object Label6: TLabel [5]
        Left = 24
        Top = 216
        Width = 57
        Height = 13
        Caption = 'Emprestado'
        FocusControl = DBEdit6
      end
      object Label7: TLabel [6]
        Left = 24
        Top = 256
        Width = 38
        Height = 13
        Caption = 'Resumo'
        FocusControl = DBMemo1
      end
      object Label8: TLabel [7]
        Left = 24
        Top = 368
        Width = 85
        Height = 13
        Caption = 'C'#243'digo da Editora'
        FocusControl = DBEdit7
      end
      object Label9: TLabel [8]
        Left = 24
        Top = 408
        Width = 98
        Height = 13
        Caption = 'C'#243'digo da Categoria'
        FocusControl = DBEdit8
      end
      inherited Panel3: TPanel
        Top = 445
        Width = 751
        ExplicitTop = 445
        ExplicitWidth = 751
        inherited ButtonFechar2: TButton
          Left = 660
          ExplicitLeft = 660
        end
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 32
        Width = 160
        Height = 21
        Color = clLime
        DataField = 'idlivro'
        DataSource = DataSource
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 72
        Width = 485
        Height = 21
        DataField = 'titulo'
        DataSource = DataSource
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 24
        Top = 112
        Width = 134
        Height = 21
        DataField = 'anopublicacao'
        DataSource = DataSource
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 24
        Top = 152
        Width = 134
        Height = 21
        DataField = 'numeropaginas'
        DataSource = DataSource
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 24
        Top = 192
        Width = 134
        Height = 21
        DataField = 'numeroedicao'
        DataSource = DataSource
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 24
        Top = 232
        Width = 134
        Height = 21
        DataField = 'emprestado'
        DataSource = DataSource
        TabOrder = 6
      end
      object DBMemo1: TDBMemo
        Left = 24
        Top = 272
        Width = 185
        Height = 89
        DataField = 'resumo'
        DataSource = DataSource
        TabOrder = 7
      end
      object DBEdit7: TDBEdit
        Left = 24
        Top = 384
        Width = 199
        Height = 21
        DataField = 'ideditora'
        DataSource = DataSource
        TabOrder = 8
      end
      object DBEdit8: TDBEdit
        Left = 24
        Top = 424
        Width = 212
        Height = 21
        DataField = 'idcategoria'
        DataSource = DataSource
        TabOrder = 9
      end
    end
  end
  inherited FDQuery: TFDQuery
    Active = True
    SQL.Strings = (
      'select * from livro')
    Left = 660
    Top = 232
    object FDQueryidlivro: TLargeintField
      DisplayLabel = 'C'#243'digo do Livro'
      DisplayWidth = 12
      FieldName = 'idlivro'
      Origin = 'idlivro'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQuerytitulo: TWideStringField
      DisplayLabel = 'T'#237'tulo'
      DisplayWidth = 37
      FieldName = 'titulo'
      Origin = 'titulo'
      Size = 60
    end
    object FDQueryanopublicacao: TIntegerField
      DisplayLabel = 'Publica'#231#227'o'
      DisplayWidth = 10
      FieldName = 'anopublicacao'
      Origin = 'anopublicacao'
    end
    object FDQuerynumeropaginas: TIntegerField
      DisplayLabel = 'N'#186' P'#225'ginas'
      DisplayWidth = 10
      FieldName = 'numeropaginas'
      Origin = 'numeropaginas'
    end
    object FDQuerynumeroedicao: TIntegerField
      DisplayLabel = 'N'#186' Edi'#231#227'o'
      DisplayWidth = 10
      FieldName = 'numeroedicao'
      Origin = 'numeroedicao'
    end
    object FDQueryemprestado: TIntegerField
      DisplayLabel = 'Emprestado'
      DisplayWidth = 10
      FieldName = 'emprestado'
      Origin = 'emprestado'
    end
    object FDQueryresumo: TWideMemoField
      DisplayLabel = 'Resumo'
      DisplayWidth = 22
      FieldName = 'resumo'
      Origin = 'resumo'
      BlobType = ftWideMemo
      DisplayValue = dvFull
    end
    object FDQueryideditora: TLargeintField
      DisplayLabel = 'C'#243'digo da Editora'
      DisplayWidth = 15
      FieldName = 'ideditora'
      Origin = 'ideditora'
    end
    object FDQueryidcategoria: TLargeintField
      DisplayLabel = 'C'#243'digo da Categoria'
      DisplayWidth = 16
      FieldName = 'idcategoria'
      Origin = 'idcategoria'
    end
  end
  inherited DataSource: TDataSource
    Left = 660
    Top = 296
  end
end
