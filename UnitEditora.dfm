inherited FormEditora: TFormEditora
  Caption = 'Editora'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    ActivePage = TabSheetCadastro
    ExplicitWidth = 728
    ExplicitHeight = 489
    inherited TabSheetConsulta: TTabSheet
      ExplicitWidth = 720
      ExplicitHeight = 461
      inherited Panel1: TPanel
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 720
        inherited EditBusca: TEdit
          Height = 21
          ExplicitWidth = 590
          ExplicitHeight = 21
        end
        inherited ButtonBusca: TButton
          ExplicitLeft = 621
        end
      end
      inherited Panel2: TPanel
        ExplicitLeft = 0
        ExplicitTop = 420
        ExplicitWidth = 720
        inherited ButtonFechar: TButton
          ExplicitLeft = 621
        end
        inherited ButtonSelecionar: TButton
          ExplicitLeft = 542
        end
      end
    end
    inherited TabSheetCadastro: TTabSheet
      ExplicitWidth = 720
      ExplicitHeight = 461
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
      inherited Panel3: TPanel
        ExplicitTop = 420
        ExplicitWidth = 720
        inherited ButtonFechar2: TButton
          ExplicitLeft = 629
        end
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
