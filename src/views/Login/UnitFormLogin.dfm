object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 207
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 628
    Height = 207
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 246
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object LabeledEditSenha: TLabeledEdit
        Left = 8
        Top = 72
        Width = 612
        Height = 23
        EditLabel.Width = 32
        EditLabel.Height = 15
        EditLabel.Caption = 'Senha'
        TabOrder = 0
        Text = 'Digite a senha.'
        TextHint = 'Digite a senha.'
      end
      object LabeledEditEmail: TLabeledEdit
        Left = 8
        Top = 27
        Width = 612
        Height = 23
        EditLabel.Width = 29
        EditLabel.Height = 15
        EditLabel.Caption = 'Email'
        TabOrder = 1
        Text = 'Digite o email'
        TextHint = 'Digite o email'
      end
      object ButtonLogin: TButton
        Left = 8
        Top = 101
        Width = 612
        Height = 25
        Caption = 'Login'
        TabOrder = 2
      end
      object ButtonRegistro: TButton
        Left = 8
        Top = 132
        Width = 612
        Height = 25
        Caption = 'Registro'
        TabOrder = 3
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object LabeledEdit1: TLabeledEdit
        Left = 3
        Top = 120
        Width = 612
        Height = 23
        EditLabel.Width = 29
        EditLabel.Height = 15
        EditLabel.Caption = 'Email'
        TabOrder = 0
        Text = 'Digite o email'
        TextHint = 'Digite o email'
      end
      object LabeledEdit2: TLabeledEdit
        Left = 3
        Top = 75
        Width = 620
        Height = 23
        EditLabel.Width = 32
        EditLabel.Height = 15
        EditLabel.Caption = 'Senha'
        TabOrder = 1
        Text = 'Digite a senha.'
        TextHint = 'Digite a senha.'
      end
      object ButtonRegistrar: TButton
        Left = 3
        Top = 149
        Width = 612
        Height = 25
        Caption = 'Registrar'
        TabOrder = 2
      end
      object LabeledEditNome: TLabeledEdit
        Left = 3
        Top = 30
        Width = 612
        Height = 23
        EditLabel.Width = 33
        EditLabel.Height = 15
        EditLabel.Caption = 'Nome'
        ImeName = 'LabeledEdit1'
        TabOrder = 3
        Text = ''
        TextHint = 'Digite o nome'
        StyleName = 'Windows'
      end
    end
  end
end
