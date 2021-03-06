inherited FormRelLivrosCategoria: TFormRelLivrosCategoria
  Caption = 'Livros por Categoria'
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
  inherited frxReport: TfrxReport
    ReportOptions.LastChange = 44339.615597939820000000
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
          Left = 236.031648500000000000
          Width = 268.346630000000000000
          Memo.UTF8W = (
            'LISTAGEM DE LIVROS POR CATEGORIA')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 52.913420000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo do Livro')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 52.913420000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'T'#237'tulo do Livro')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 52.913420000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano de Publica'#231#227'o')
          ParentFont = False
        end
      end
      inherited MasterData1: TfrxMasterData
        Top = 200.315090000000000000
        object frxDBDatasetidlivro: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'idlivro'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."idlivro"]')
        end
        object frxDBDatasettitulo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 3.779530000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataField = 'titulo'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."titulo"]')
        end
        object frxDBDatasetanopublicacao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'anopublicacao'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."anopublicacao"]')
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
        Condition = 'frxDBDataset."nomecategoria"'
        object frxDBDatasetnomecategoria: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          DataField = 'nomecategoria'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."nomecategoria"]')
          ParentFont = False
        end
      end
    end
  end
  inherited FDQuery: TFDQuery
    SQL.Strings = (
      'select * from livro '
      'join categoria on livro.idcategoria = categoria.idcategoria'
      'order by categoria.nomecategoria, livro.titulo')
  end
end
