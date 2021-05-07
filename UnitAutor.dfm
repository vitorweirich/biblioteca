inherited FormAutor: TFormAutor
  Caption = 'Autores'
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
      inherited Panel3: TPanel
        ExplicitTop = 420
        ExplicitWidth = 720
        inherited ButtonFechar2: TButton
          ExplicitLeft = 629
        end
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
end
