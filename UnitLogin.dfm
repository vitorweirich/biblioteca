object FormLogin: TFormLogin
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 189
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 21
    Width = 49
    Height = 13
    Caption = 'Email'
  end
  object Label2: TLabel
    Left = 40
    Top = 67
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object EditEmail: TEdit
    Left = 40
    Top = 40
    Width = 249
    Height = 21
    TabOrder = 0
  end
  object EditSenha: TEdit
    Left = 40
    Top = 85
    Width = 249
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object ButtonEntrar: TButton
    Left = 56
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Entrar'
    Default = True
    TabOrder = 2
    OnClick = ButtonEntrarClick
  end
  object ButtonCancelar: TButton
    Left = 176
    Top = 136
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = ButtonCancelarClick
  end
  object FDQueryLogin: TFDQuery
    Connection = FormPrincipal.FDConnection
    SQL.Strings = (
      'select * from usuario '
      'where email = :email '
      'and senha = :senha')
    Left = 216
    Top = 64
    ParamData = <
      item
        Name = 'EMAIL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
end
