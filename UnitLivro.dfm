inherited FormLivro: TFormLivro
  Caption = 'Livros'
  ClientHeight = 514
  ClientWidth = 874
  ExplicitWidth = 890
  ExplicitHeight = 553
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 874
    Height = 514
    ActivePage = TabSheetCadastro
    ExplicitWidth = 874
    ExplicitHeight = 514
    inherited TabSheetConsulta: TTabSheet
      ExplicitWidth = 866
      ExplicitHeight = 486
      inherited Panel1: TPanel
        Width = 866
        ExplicitWidth = 866
        inherited EditBusca: TEdit
          Width = 736
          ExplicitWidth = 736
        end
        inherited ButtonBusca: TButton
          Left = 767
          ExplicitLeft = 767
        end
      end
      inherited Panel2: TPanel
        Top = 445
        Width = 866
        ExplicitTop = 445
        ExplicitWidth = 866
        inherited ButtonFechar: TButton
          Left = 767
          ExplicitLeft = 767
        end
        inherited ButtonSelecionar: TButton
          Left = 688
          ExplicitLeft = 688
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 866
        Height = 404
        Columns = <
          item
            Expanded = False
            FieldName = 'idlivro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'titulo'
            Width = 256
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'anopublicacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numeropaginas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numeroedicao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomeeditora'
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomecategoria'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomeemprestado'
            Visible = True
          end>
      end
    end
    inherited TabSheetCadastro: TTabSheet
      ExplicitWidth = 866
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
      object Label7: TLabel [5]
        Left = 24
        Top = 219
        Width = 38
        Height = 13
        Caption = 'Resumo'
        FocusControl = DBMemo1
      end
      object Label8: TLabel [6]
        Left = 24
        Top = 368
        Width = 85
        Height = 13
        Caption = 'C'#243'digo da Editora'
        FocusControl = DBEdit7
      end
      object Label9: TLabel [7]
        Left = 24
        Top = 408
        Width = 98
        Height = 13
        Caption = 'C'#243'digo da Categoria'
        FocusControl = DBEdit8
      end
      object Label6: TLabel [8]
        Left = 280
        Top = 368
        Width = 79
        Height = 13
        Caption = 'Nome da Editora'
        FocusControl = DBEdit6
      end
      object Label10: TLabel [9]
        Left = 280
        Top = 408
        Width = 92
        Height = 13
        Caption = 'Nome da Categoria'
        FocusControl = DBEdit9
      end
      object Label11: TLabel [10]
        Left = 232
        Top = 16
        Width = 57
        Height = 13
        Caption = 'Emprestado'
        FocusControl = DBMemo2
      end
      inherited Panel3: TPanel
        Top = 445
        Width = 866
        ExplicitTop = 445
        ExplicitWidth = 866
        inherited ButtonFechar2: TButton
          Left = 775
          ExplicitLeft = 775
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
      object DBMemo1: TDBMemo
        Left = 24
        Top = 238
        Width = 473
        Height = 123
        DataField = 'resumo'
        DataSource = DataSource
        ScrollBars = ssVertical
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 24
        Top = 384
        Width = 212
        Height = 21
        Color = clLime
        DataField = 'ideditora'
        DataSource = DataSource
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit8: TDBEdit
        Left = 24
        Top = 424
        Width = 212
        Height = 21
        Color = clLime
        DataField = 'idcategoria'
        DataSource = DataSource
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit6: TDBEdit
        Left = 280
        Top = 384
        Width = 400
        Height = 21
        Color = clLime
        DataField = 'nomeeditora'
        DataSource = DataSource
        ReadOnly = True
        TabOrder = 9
      end
      object DBEdit9: TDBEdit
        Left = 280
        Top = 424
        Width = 400
        Height = 21
        Color = clLime
        DataField = 'nomecategoria'
        DataSource = DataSource
        ReadOnly = True
        TabOrder = 10
      end
      object ButtonBuscarEditora: TButton
        Left = 704
        Top = 383
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 11
        OnClick = ButtonBuscarEditoraClick
      end
      object ButtonBuscarCategoria: TButton
        Left = 704
        Top = 422
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 12
        OnClick = ButtonBuscarCategoriaClick
      end
      object DBMemo2: TDBMemo
        Left = 232
        Top = 32
        Width = 225
        Height = 21
        Color = clLime
        DataField = 'nomeemprestado'
        DataSource = DataSource
        TabOrder = 13
      end
      object PanelAutores: TPanel
        Left = 515
        Top = 16
        Width = 348
        Height = 345
        Color = clAppWorkSpace
        ParentBackground = False
        TabOrder = 14
        object DBGrid2: TDBGrid
          Left = 1
          Top = 1
          Width = 346
          Height = 272
          Align = alTop
          DataSource = DataSourceAutores
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'nomeautor'
              Title.Caption = 'Nome do Autor'
              Width = 329
              Visible = True
            end>
        end
        object ButtonAdicionarAutor: TButton
          Left = 24
          Top = 304
          Width = 89
          Height = 25
          Caption = 'Adiconar Autor'
          TabOrder = 1
          OnClick = ButtonAdicionarAutorClick
        end
        object ButtonExcluirAutor: TButton
          Left = 160
          Top = 304
          Width = 75
          Height = 25
          Caption = 'Excluir Autor'
          TabOrder = 2
          OnClick = ButtonExcluirAutorClick
        end
      end
    end
  end
  inherited FDQuery: TFDQuery
    Active = True
    SQL.Strings = (
      'select livro.*, editora.nomeeditora, '
      '     categoria.nomecategoria, '
      '     case livro.emprestado '
      '        when 0 then '#39'N'#227'o'#39
      '        when 1 then '#39'Sim'#39
      '        end as nomeemprestado '
      'from livro'
      'join editora on editora.ideditora = livro.ideditora'
      'join categoria on categoria.idcategoria = livro.idcategoria')
    Left = 420
    Top = 200
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
    object FDQuerynomeeditora: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome da Editora'
      FieldName = 'nomeeditora'
      Origin = 'nomeeditora'
      Size = 60
    end
    object FDQuerynomecategoria: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome da Categoria'
      FieldName = 'nomecategoria'
      Origin = 'nomecategoria'
      Size = 60
    end
    object FDQuerynomeemprestado: TWideMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Emprestado'
      FieldName = 'nomeemprestado'
      Origin = 'nomeemprestado'
      ReadOnly = True
      BlobType = ftWideMemo
      DisplayValue = dvFull
    end
  end
  inherited DataSource: TDataSource
    Left = 412
    Top = 136
  end
  inherited frxReport: TfrxReport
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
      end>
    Variables = <>
    Style = <>
    inherited Page1: TfrxReportPage
      inherited ReportTitle1: TfrxReportTitle
        inherited Memo1: TfrxMemoView
          Left = 288.945068500000000000
          Top = 7.559060000000000000
          Width = 162.519790000000000000
          Memo.UTF8W = (
            'LISTAGEM DE LIVROS')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 52.913420000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 52.913420000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'T'#237'tulo')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Top = 52.913420000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Editora')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 52.913420000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Categoria')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Top = 52.913420000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186' P'#225'ginas')
          ParentFont = False
        end
      end
      inherited MasterData1: TfrxMasterData
        object frxDBDatasettitulo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 71.811070000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'titulo'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."titulo"]')
        end
        object frxDBDatasetnomeeditora: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 313.700990000000000000
          Top = -3.779530000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'nomeeditora'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."nomeeditora"]')
        end
        object frxDBDatasetnomecategoria: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = -3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'nomecategoria'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."nomecategoria"]')
        end
        object frxDBDatasetidlivro: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'idlivro'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset."idlivro"]')
          ParentFont = False
        end
        object frxDBDatasetnumeropaginas: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 646.299630000000000000
          Top = -3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'numeropaginas'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."numeropaginas"]')
        end
      end
      inherited PageFooter1: TfrxPageFooter
        inherited Memo2: TfrxMemoView
          Left = 645.921677000000000000
        end
      end
    end
  end
  object FDQueryAutores: TFDQuery
    Active = True
    IndexFieldNames = 'idlivro'
    MasterSource = DataSource
    MasterFields = 'idlivro'
    Connection = FormPrincipal.FDConnection
    SQL.Strings = (
      'select livroautor.* , autor.nomeautor '
      'from livroautor'
      'join autor on autor.idautor = livroautor.idautor '
      'order by autor.nomeautor'
      '')
    Left = 764
    Top = 88
  end
  object DataSourceAutores: TDataSource
    DataSet = FDQueryAutores
    Left = 764
    Top = 152
  end
end
