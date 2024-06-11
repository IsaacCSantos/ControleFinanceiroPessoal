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
      ActivePage = TabSheetPrincipal
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
          ExplicitWidth = 616
          ExplicitHeight = 411
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
              Left = 542
              Top = 3
              Width = 75
              Height = 35
              Align = alRight
              Caption = 'Excluir'
              TabOrder = 0
              ExplicitLeft = 538
            end
          end
          object LabeledEdit1: TLabeledEdit
            Left = 16
            Top = 48
            Width = 417
            Height = 23
            EditLabel.Width = 67
            EditLabel.Height = 15
            EditLabel.Caption = 'LabeledEdit1'
            TabOrder = 1
            Text = ''
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
