inherited FormAutor: TFormAutor
  Caption = 'Autores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheetCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 32
        Top = 24
        Width = 78
        Height = 13
        Caption = 'C'#243'digo do Autor'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 32
        Top = 64
        Width = 72
        Height = 13
        Caption = 'Nome do Autor'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 32
        Top = 40
        Width = 199
        Height = 21
        Color = clLime
        DataField = 'idautor'
        DataSource = DataSource
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 32
        Top = 80
        Width = 500
        Height = 21
        DataField = 'nomeautor'
        DataSource = DataSource
        TabOrder = 2
      end
    end
  end
  inherited FDQuery: TFDQuery
    Active = True
    SQL.Strings = (
      'select * from autor')
    object FDQueryidautor: TLargeintField
      DisplayLabel = 'C'#243'digo do Autor'
      FieldName = 'idautor'
      Origin = 'idautor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQuerynomeautor: TWideStringField
      DisplayLabel = 'Nome do Autor'
      FieldName = 'nomeautor'
      Origin = 'nomeautor'
      Size = 60
    end
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
          Top = 7.559060000000000000
          Memo.UTF8W = (
            'LISTAGEM DE AUTORES')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 52.913420000000000000
          Width = 120.944960000000000000
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
          Left = 151.181200000000000000
          Top = 52.913420000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
      end
      inherited MasterData1: TfrxMasterData
        object frxDBDatasetidautor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'idautor'
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
            '[frxDBDataset."idautor"]')
          ParentFont = False
        end
        object frxDBDatasetnomeautor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 151.181200000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'nomeautor'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."nomeautor"]')
        end
      end
      inherited PageFooter1: TfrxPageFooter
        inherited Memo2: TfrxMemoView
          Left = 645.921677000000000000
        end
      end
    end
  end
end
