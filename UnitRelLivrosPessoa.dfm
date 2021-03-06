inherited FormRelLivrosPessoa: TFormRelLivrosPessoa
  Caption = 'Livros por Pessoa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitLeft = 0
    ExplicitTop = 112
    ExplicitWidth = 394
    inherited ButtonImprimir: TButton
      ExplicitLeft = 64
    end
    inherited ButtonFechar: TButton
      ExplicitLeft = 256
    end
  end
  object EditNome: TEdit [1]
    Left = 105
    Top = 40
    Width = 264
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object EditCodigo: TEdit [2]
    Left = 8
    Top = 40
    Width = 73
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object ButtonBuscar: TButton [3]
    Left = 120
    Top = 72
    Width = 105
    Height = 25
    Caption = 'Buscar'
    TabOrder = 3
    OnClick = ButtonBuscarClick
  end
  inherited frxReport: TfrxReport
    Left = 286
    Top = 77
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
          Memo.UTF8W = (
            'LISTAGEM DE LIVROS POR PESSOA')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 52.913420000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Livro')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 52.913420000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Empr'#233'stimo')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Decolu'#231#227'o')
          ParentFont = False
        end
      end
      inherited MasterData1: TfrxMasterData
        Top = 200.315090000000000000
        object frxDBDatasettitulo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 321.260050000000000000
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
        object frxDBDatasetdhemprestimo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
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
          Memo.UTF8W = (
            '[frxDBDataset."dhemprestimo"]')
          ParentFont = False
        end
        object frxDBDatasetdhvencimento: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
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
          Memo.UTF8W = (
            '[frxDBDataset."dhvencimento"]')
          ParentFont = False
        end
        object frxDBDatasetdhdevolucao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
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
      end
      inherited PageFooter1: TfrxPageFooter
        Top = 283.464750000000000000
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBDataset."nomepessoa"'
        object frxDBDatasetnomepessoa: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'nomepessoa'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."nomepessoa"]')
          ParentFont = False
        end
      end
    end
  end
  inherited FDQuery: TFDQuery
    SQL.Strings = (
      'select * from (select * from emprestimo where '
      'emprestimo.idpessoa = :idpessoa) as emprestimo '
      'join pessoa on pessoa.idpessoa = emprestimo.idpessoa '
      'join livro on emprestimo.idlivro = livro.idlivro')
    Left = 230
    Top = 80
    ParamData = <
      item
        Name = 'IDPESSOA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  inherited frxDBDataset: TfrxDBDataset
    Left = 350
    Top = 69
  end
end
