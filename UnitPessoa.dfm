inherited FormPessoa: TFormPessoa
  Caption = 'Pessoas'
  ClientWidth = 751
  ExplicitWidth = 767
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 751
    inherited TabSheetConsulta: TTabSheet
      inherited Panel1: TPanel
        Width = 743
        inherited EditBusca: TEdit
          Width = 694
        end
        inherited ButtonBusca: TButton
          Left = 644
        end
      end
      inherited Panel2: TPanel
        Width = 743
        inherited ButtonFechar: TButton
          Left = 644
        end
        inherited ButtonSelecionar: TButton
          Left = 565
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
        inherited ButtonFechar2: TButton
          Left = 652
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
end
