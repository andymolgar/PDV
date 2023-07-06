object frameDinheiro: TframeDinheiro
  Left = 0
  Top = 0
  Width = 507
  Height = 334
  TabOrder = 0
  OnResize = FrameResize
  object pnlContainer: TPanel
    Left = 0
    Top = 0
    Width = 507
    Height = 334
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 48
    ExplicitTop = 88
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pnlRecebido: TPanel
      Left = 48
      Top = 40
      Width = 417
      Height = 40
      Margins.Left = 0
      Margins.Top = 111
      Margins.Bottom = 111
      BevelOuter = bvNone
      TabOrder = 0
      object lbl1: TLabel
        Left = 0
        Top = 0
        Width = 214
        Height = 40
        Align = alLeft
        Caption = 'Total Recebido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6708056
        Font.Height = -33
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtValorRecebido: TEdit
        Left = 214
        Top = 0
        Width = 203
        Height = 40
        Align = alClient
        Alignment = taRightJustify
        BorderStyle = bsNone
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6708056
        Font.Height = -33
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '0.00'
      end
    end
  end
end
