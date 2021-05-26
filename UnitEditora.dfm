inherited FormEditora: TFormEditora
  Caption = 'Editora'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    ActivePage = TabSheetCadastro
    inherited TabSheetCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 24
        Top = 16
        Width = 85
        Height = 13
        Caption = 'C'#243'digo da Editora'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 24
        Top = 56
        Width = 79
        Height = 13
        Caption = 'Nome da Editora'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 32
        Width = 199
        Height = 21
        Color = clLime
        DataField = 'ideditora'
        DataSource = DataSource
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 72
        Width = 500
        Height = 21
        DataField = 'nomeeditora'
        DataSource = DataSource
        TabOrder = 2
      end
    end
  end
  inherited FDQuery: TFDQuery
    Active = True
    SQL.Strings = (
      'select * from editora')
    object FDQueryideditora: TLargeintField
      DisplayLabel = 'C'#243'digo da Editora'
      FieldName = 'ideditora'
      Origin = 'ideditora'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQuerynomeeditora: TWideStringField
      DisplayLabel = 'Nome da Editora'
      FieldName = 'nomeeditora'
      Origin = 'nomeeditora'
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
          Left = 275.716713500000000000
          Top = 7.559060000000000000
          Width = 188.976500000000000000
          Memo.UTF8W = (
            'LISTAGEM DE EDITORAS')
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
