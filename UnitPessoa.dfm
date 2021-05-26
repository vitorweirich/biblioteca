inherited FormPessoa: TFormPessoa
  Caption = 'Pessoas'
  ClientWidth = 751
  ExplicitWidth = 767
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 751
    ExplicitWidth = 751
    inherited TabSheetConsulta: TTabSheet
      ExplicitWidth = 743
      inherited Panel1: TPanel
        Width = 743
        ExplicitWidth = 743
        inherited EditBusca: TEdit
          Width = 694
          ExplicitWidth = 694
        end
        inherited ButtonBusca: TButton
          Left = 644
          ExplicitLeft = 644
        end
      end
      inherited Panel2: TPanel
        Width = 743
        ExplicitWidth = 743
        inherited ButtonFechar: TButton
          Left = 644
          ExplicitLeft = 644
        end
        inherited ButtonSelecionar: TButton
          Left = 565
          ExplicitLeft = 565
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 743
        Columns = <
          item
            Expanded = False
            FieldName = 'idpessoa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomepessoa'
            Width = 161
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cpf'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Width = 168
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefone'
            Visible = True
          end>
      end
    end
    inherited TabSheetCadastro: TTabSheet
      ExplicitWidth = 743
      object Label1: TLabel [0]
        Left = 24
        Top = 24
        Width = 85
        Height = 13
        Caption = 'C'#243'digo da Pessoa'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 24
        Top = 64
        Width = 27
        Height = 13
        Caption = 'Nome'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [2]
        Left = 24
        Top = 104
        Width = 19
        Height = 13
        Caption = 'CPF'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [3]
        Left = 24
        Top = 144
        Width = 24
        Height = 13
        Caption = 'Email'
        FocusControl = DBEdit4
      end
      object Label5: TLabel [4]
        Left = 24
        Top = 184
        Width = 42
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBEdit5
      end
      inherited Panel3: TPanel
        Width = 743
        ExplicitWidth = 743
        inherited ButtonFechar2: TButton
          Left = 652
          ExplicitLeft = 652
        end
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 40
        Width = 199
        Height = 21
        Color = clLime
        DataField = 'idpessoa'
        DataSource = DataSource
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 80
        Width = 732
        Height = 21
        DataField = 'nomepessoa'
        DataSource = DataSource
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 24
        Top = 120
        Width = 199
        Height = 21
        DataField = 'cpf'
        DataSource = DataSource
        MaxLength = 15
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 24
        Top = 160
        Width = 784
        Height = 21
        DataField = 'email'
        DataSource = DataSource
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 24
        Top = 200
        Width = 394
        Height = 21
        DataField = 'telefone'
        DataSource = DataSource
        MaxLength = 15
        TabOrder = 5
      end
    end
  end
  inherited FDQuery: TFDQuery
    Active = True
    SQL.Strings = (
      'select * from pessoa')
    Left = 636
    Top = 200
    object FDQueryidpessoa: TLargeintField
      DisplayLabel = 'C'#243'digo da Pessoa'
      DisplayWidth = 15
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQuerynomepessoa: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 56
      FieldName = 'nomepessoa'
      Origin = 'nomepessoa'
      Size = 60
    end
    object FDQuerycpf: TWideStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 15
      FieldName = 'cpf'
      Origin = 'cpf'
      EditMask = '999.999.999-999;1;_'
      Size = 15
    end
    object FDQueryemail: TWideStringField
      DisplayLabel = 'Email'
      DisplayWidth = 60
      FieldName = 'email'
      Origin = 'email'
      Size = 60
    end
    object FDQuerytelefone: TWideStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 30
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '(99) 99999-9990;1;_'
      Size = 30
    end
  end
  inherited frxReport: TfrxReport
    Left = 524
    Top = 200
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
          Left = 281.386008500000000000
          Top = 7.559060000000000000
          Width = 177.637910000000000000
          Memo.UTF8W = (
            'LISTAGEM DE PESSOAS')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 52.913420000000000000
          Width = 56.692950000000000000
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
          Left = 68.031540000000000000
          Top = 52.913420000000000000
          Width = 207.874150000000000000
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
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 52.913420000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 52.913420000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Email')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 52.913420000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
      end
      inherited MasterData1: TfrxMasterData
        Height = 34.015770000000000000
        object frxDBDatasetidpessoa: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 56.692950000000000000
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
        object frxDBDatasetnomepessoa: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 7.559060000000000000
          Width = 207.874150000000000000
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
        object frxDBDatasetcpf: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 7.559060000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'cpf'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."cpf"]')
          ParentFont = False
        end
        object frxDBDatasetemail: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 7.559060000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'email'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."email"]')
          ParentFont = False
        end
        object frxDBDatasettelefone: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 7.559060000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'telefone'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset."telefone"]')
          ParentFont = False
        end
      end
      inherited PageFooter1: TfrxPageFooter
        Top = 249.448980000000000000
        inherited Memo2: TfrxMemoView
          Left = 645.921677000000000000
        end
      end
    end
  end
end
