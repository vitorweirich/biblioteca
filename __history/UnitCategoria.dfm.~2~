inherited FormCategoria: TFormCategoria
  Caption = 'Categorias'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    ActivePage = TabSheetCadastro
    inherited TabSheetConsulta: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inherited Panel1: TPanel
        inherited EditBusca: TEdit
          ExplicitWidth = 590
        end
      end
    end
    inherited TabSheetCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 32
        Top = 32
        Width = 98
        Height = 13
        Caption = 'C'#243'digo da Categoria'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 32
        Top = 72
        Width = 92
        Height = 13
        Caption = 'Nome da Categoria'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 32
        Top = 45
        Width = 199
        Height = 21
        Color = clLime
        DataField = 'idcategoria'
        DataSource = DataSource
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 32
        Top = 88
        Width = 500
        Height = 21
        DataField = 'nomecategoria'
        DataSource = DataSource
        TabOrder = 2
      end
    end
  end
  inherited FDQuery: TFDQuery
    Active = True
    SQL.Strings = (
      'select * from categoria')
    object FDQueryidcategoria: TLargeintField
      DisplayLabel = 'C'#243'digo da Categoria'
      FieldName = 'idcategoria'
      Origin = 'idcategoria'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQuerynomecategoria: TWideStringField
      DisplayLabel = 'Nome da Categoria'
      FieldName = 'nomecategoria'
      Origin = 'nomecategoria'
      Size = 60
    end
  end
end
