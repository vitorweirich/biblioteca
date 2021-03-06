inherited FormBaseEmprestimoDevolucao: TFormBaseEmprestimoDevolucao
  Caption = 'Empr'#233'stimos e Devolu'#231#245'es'
  ClientWidth = 774
  ExplicitWidth = 790
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 774
    ExplicitWidth = 774
    inherited TabSheetConsulta: TTabSheet
      ExplicitWidth = 766
      inherited Panel1: TPanel
        Width = 766
        ExplicitWidth = 766
        inherited EditBusca: TEdit
          Width = 717
          ExplicitWidth = 717
        end
        inherited ButtonBusca: TButton
          Left = 667
          ExplicitLeft = 667
        end
      end
      inherited Panel2: TPanel
        Width = 766
        ExplicitWidth = 766
        inherited ButtonAlterar: TButton
          Caption = 'Devolver'
        end
        inherited ButtonExcluir: TButton
          Visible = False
        end
        inherited ButtonFechar: TButton
          Left = 667
          ExplicitLeft = 667
        end
        inherited ButtonSelecionar: TButton
          Left = 588
          ExplicitLeft = 588
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 766
        Columns = <
          item
            Expanded = False
            FieldName = 'titulo'
            Width = 175
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idprestimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dhemprestimo'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dhvencimento'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dhdevolucao'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomepessoa'
            Width = 151
            Visible = True
          end>
      end
    end
    inherited TabSheetCadastro: TTabSheet
      ExplicitWidth = 766
      object Label1: TLabel [0]
        Left = 16
        Top = 8
        Width = 106
        Height = 13
        Caption = 'C'#243'digo do Empr'#233'stimo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 16
        Top = 48
        Width = 74
        Height = 13
        Caption = 'C'#243'digo do Livro'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [2]
        Left = 16
        Top = 88
        Width = 85
        Height = 13
        Caption = 'C'#243'digo da Pessoa'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [3]
        Left = 16
        Top = 128
        Width = 96
        Height = 13
        Caption = 'Data do Empr'#233'stimo'
        FocusControl = DBEdit4
      end
      object Label5: TLabel [4]
        Left = 16
        Top = 168
        Width = 96
        Height = 13
        Caption = 'Data do Vencimento'
        FocusControl = DBEdit5
      end
      object Label6: TLabel [5]
        Left = 16
        Top = 208
        Width = 91
        Height = 13
        Caption = 'Data da Devolu'#231#227'o'
        FocusControl = DBEdit6
      end
      object Label7: TLabel [6]
        Left = 229
        Top = 48
        Width = 68
        Height = 13
        Caption = 'Nome do Livro'
        FocusControl = DBEdit7
      end
      object Label8: TLabel [7]
        Left = 229
        Top = 88
        Width = 79
        Height = 13
        Caption = 'Nome da Pessoa'
        FocusControl = DBEdit8
      end
      inherited Panel3: TPanel
        Width = 766
        ExplicitWidth = 766
        inherited ButtonFechar2: TButton
          Left = 675
          ExplicitLeft = 675
        end
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 24
        Width = 199
        Height = 21
        Color = clLime
        DataField = 'idprestimento'
        DataSource = DataSource
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 64
        Width = 199
        Height = 21
        Color = clLime
        DataField = 'idlivro'
        DataSource = DataSource
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 104
        Width = 199
        Height = 21
        Color = clLime
        DataField = 'idpessoa'
        DataSource = DataSource
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 144
        Width = 446
        Height = 21
        Color = clLime
        DataField = 'dhemprestimo'
        DataSource = DataSource
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 184
        Width = 446
        Height = 21
        Color = clLime
        DataField = 'dhvencimento'
        DataSource = DataSource
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 16
        Top = 224
        Width = 446
        Height = 21
        Color = clLime
        DataField = 'dhdevolucao'
        DataSource = DataSource
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 229
        Top = 64
        Width = 233
        Height = 21
        Color = clLime
        DataField = 'titulo'
        DataSource = DataSource
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit8: TDBEdit
        Left = 229
        Top = 104
        Width = 233
        Height = 21
        Color = clLime
        DataField = 'nomepessoa'
        DataSource = DataSource
        ReadOnly = True
        TabOrder = 8
      end
      object ButtonBuscarLivro: TButton
        Left = 480
        Top = 62
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 9
        OnClick = ButtonBuscarLivroClick
      end
      object ButtonBuscarPessoa: TButton
        Left = 480
        Top = 102
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 10
        OnClick = ButtonBuscarPessoaClick
      end
    end
  end
  inherited FDQuery: TFDQuery
    Active = True
    SQL.Strings = (
      'select emprestimo.*, livro.titulo, pessoa.nomepessoa from'
      'emprestimo join livro on livro.idlivro = emprestimo.idlivro'
      'join pessoa on emprestimo.idpessoa = pessoa.idpessoa')
    Left = 692
    Top = 136
    object FDQueryidprestimento: TLargeintField
      DisplayLabel = 'C'#243'digo do Empr'#233'stimo'
      FieldName = 'idprestimento'
      Origin = 'idprestimento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQueryidlivro: TLargeintField
      DisplayLabel = 'C'#243'digo do Livro'
      FieldName = 'idlivro'
      Origin = 'idlivro'
    end
    object FDQueryidpessoa: TLargeintField
      DisplayLabel = 'C'#243'digo da Pessoa'
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
    object FDQuerydhemprestimo: TSQLTimeStampField
      DisplayLabel = 'Data do Empr'#233'stimo'
      FieldName = 'dhemprestimo'
      Origin = 'dhemprestimo'
    end
    object FDQuerydhvencimento: TSQLTimeStampField
      DisplayLabel = 'Data do Vencimento'
      FieldName = 'dhvencimento'
      Origin = 'dhvencimento'
    end
    object FDQuerydhdevolucao: TSQLTimeStampField
      DisplayLabel = 'Data da Devolu'#231#227'o'
      FieldName = 'dhdevolucao'
      Origin = 'dhdevolucao'
    end
    object FDQuerytitulo: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome do Livro'
      FieldName = 'titulo'
      Origin = 'titulo'
      Size = 60
    end
    object FDQuerynomepessoa: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome da Pessoa'
      FieldName = 'nomepessoa'
      Origin = 'nomepessoa'
      Size = 60
    end
  end
  inherited DataSource: TDataSource
    Left = 692
    Top = 192
  end
  inherited frxReport: TfrxReport
    Left = 604
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
      end>
    Variables = <>
    Style = <>
    inherited Page1: TfrxReportPage
      inherited ReportTitle1: TfrxReportTitle
        Height = 113.385900000000000000
        inherited Memo1: TfrxMemoView
          Top = 7.559060000000000000
          Memo.UTF8W = (
            'LISTAGEM DE EMPR'#201'STIMOS')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 79.370130000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Empr'#233'stimo')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 79.370130000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Livro')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 79.370130000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pessoa')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Top = 79.370130000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Empr'#233'stimo')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 79.370130000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 79.370130000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pessoa')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 79.370130000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Devolu'#231#227'o')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 98.267780000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 49.133890000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digos')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 49.133890000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nomes')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Top = 49.133890000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Datas')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 79.370130000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Livro')
          ParentFont = False
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 71.811070000000000000
          Height = 869.291900000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 37.795300000000000000
          Height = 903.307670000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 71.811070000000000000
          Height = 869.291900000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 37.795300000000000000
          Height = 903.307670000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 71.811070000000000000
          Height = 869.291900000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 657.638220000000000000
          Top = 71.811070000000000000
          Height = 869.291900000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 71.811070000000000000
          Height = 869.291900000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      inherited MasterData1: TfrxMasterData
        Height = 30.236240000000000000
        Top = 192.756030000000000000
        object frxDBDatasetidlivro: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'idpessoa'
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
            '[frxDBDataset."idpessoa"]')
          ParentFont = False
        end
        object frxDBDatasetidpessoa: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'idpessoa'
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
            '[frxDBDataset."idpessoa"]')
          ParentFont = False
        end
        object frxDBDatasetidprestimento: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'idprestimento'
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
            '[frxDBDataset."idprestimento"]')
          ParentFont = False
        end
        object frxDBDatasetdhemprestimo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 480.000310000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'dhemprestimo'
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
            '[frxDBDataset."dhemprestimo"]')
          ParentFont = False
        end
        object frxDBDatasetdhvencimento: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'dhvencimento'
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
            '[frxDBDataset."dhvencimento"]')
          ParentFont = False
        end
        object frxDBDatasetnomepessoa: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 3.779530000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataField = 'nomepessoa'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."nomepessoa"]')
          ParentFont = False
        end
        object frxDBDatasetdhdevolucao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'dhdevolucao'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."dhdevolucao"]')
          ParentFont = False
        end
        object frxDBDatasettitulo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'titulo'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."titulo"]')
          ParentFont = False
        end
      end
      inherited PageFooter1: TfrxPageFooter
        Top = 283.464750000000000000
        inherited Memo2: TfrxMemoView
          Left = 645.921677000000000000
        end
      end
    end
  end
  object FDQueryLivro: TFDQuery
    Connection = FormPrincipal.FDConnection
    SQL.Strings = (
      'select * from livro where idlivro = :idlivro')
    Left = 572
    Top = 360
    ParamData = <
      item
        Name = 'IDLIVRO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
