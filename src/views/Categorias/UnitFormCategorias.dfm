object FormCategorias: TFormCategorias
  Left = 0
  Top = 0
  Caption = 'Categorias'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object PanelBackGround: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 442
    Align = alClient
    BevelOuter = bvNone
    Caption = 'PanelBackGround'
    ShowCaption = False
    TabOrder = 0
    ExplicitWidth = 624
    ExplicitHeight = 441
    object PageControl: TPageControl
      Left = 0
      Top = 0
      Width = 628
      Height = 442
      ActivePage = TabSheetCadastro
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 624
      ExplicitHeight = 441
      object TabSheetPrincipal: TTabSheet
        Caption = 'Principal'
        object DBGrid1: TDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 614
          Height = 365
          Align = alClient
          DataSource = DataSourceCategorias
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
        object Panel2: TPanel
          Left = 0
          Top = 371
          Width = 620
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel2'
          ShowCaption = False
          TabOrder = 1
          object ButtonEditar: TButton
            AlignWithMargins = True
            Left = 84
            Top = 3
            Width = 75
            Height = 35
            Align = alLeft
            Caption = 'Editar'
            TabOrder = 0
            OnClick = ButtonEditarClick
          end
          object ButtonAdicionar: TButton
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 75
            Height = 35
            Align = alLeft
            Caption = 'Adicionar'
            TabOrder = 1
            OnClick = ButtonAdicionarClick
          end
        end
      end
      object TabSheetCadastro: TTabSheet
        Caption = 'Cadastro'
        ImageIndex = 1
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 620
          Height = 412
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel1'
          ShowCaption = False
          TabOrder = 0
          ExplicitLeft = -3
          ExplicitTop = 16
          object Label2: TLabel
            Left = 31
            Top = 100
            Width = 23
            Height = 15
            Caption = 'Tipo'
          end
          object Panel3: TPanel
            Left = 0
            Top = 371
            Width = 620
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            Caption = 'Panel3'
            ShowCaption = False
            TabOrder = 0
            ExplicitTop = 370
            ExplicitWidth = 616
            object ButtonExcluir: TButton
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 75
              Height = 35
              Align = alLeft
              Caption = 'Excluir'
              TabOrder = 0
              ExplicitLeft = 538
            end
            object ButtonGravar: TButton
              AlignWithMargins = True
              Left = 542
              Top = 3
              Width = 75
              Height = 35
              Align = alRight
              Caption = 'Gravar'
              DisabledImageName = 'Button2'
              TabOrder = 1
              OnClick = ButtonGravarClick
              ExplicitLeft = 11
              ExplicitTop = 6
            end
          end
          object LabeledEditNome: TLabeledEdit
            Left = 31
            Top = 71
            Width = 554
            Height = 23
            EditLabel.Width = 33
            EditLabel.Height = 15
            EditLabel.Caption = 'Nome'
            TabOrder = 1
            Text = ''
          end
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 620
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Panel3'
            ShowCaption = False
            TabOrder = 2
            ExplicitTop = 370
            ExplicitWidth = 616
            object Label1: TLabel
              AlignWithMargins = True
              Left = 47
              Top = 3
              Width = 570
              Height = 35
              Align = alClient
              Caption = 'Categorias'
              Layout = tlCenter
              ExplicitWidth = 56
              ExplicitHeight = 15
            end
            object Button1: TButton
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 38
              Height = 35
              Align = alLeft
              Caption = '<'
              TabOrder = 0
              OnClick = Button1Click
            end
          end
          object ComboBoxTipo: TComboBox
            Left = 31
            Top = 119
            Width = 554
            Height = 23
            ImeName = 'ComboBoxTipo'
            ItemIndex = 0
            TabOrder = 3
            Text = 'Receita'
            Items.Strings = (
              'Receita'
              'Despesa')
          end
        end
      end
    end
  end
  object DataSourceCategorias: TDataSource
    Left = 488
    Top = 8
  end
end
