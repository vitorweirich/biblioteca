inherited FormEditora: TFormEditora
  Caption = 'Editora'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    ActivePage = TabSheetCadastro
    inherited TabSheetConsulta: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      inherited Panel1: TPanel
        inherited EditBusca: TEdit
          ExplicitWidth = 590
        end
      end
    end
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
end
