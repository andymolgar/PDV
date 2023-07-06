object pagePrincipal: TpagePrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Academia do C'#243'digo - PDV'
  ClientHeight = 740
  ClientWidth = 1144
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMaster: TPanel
    Left = 0
    Top = 0
    Width = 1144
    Height = 740
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlContainer: TPanel
      Left = 0
      Top = 0
      Width = 1144
      Height = 740
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        1144
        740)
      object pnlTitle: TPanel
        Left = 0
        Top = 0
        Width = 1144
        Height = 60
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Caixa Fechado'
        Color = 12158208
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -33
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object pnlButton: TPanel
        Left = 0
        Top = 640
        Width = 1144
        Height = 100
        Align = alBottom
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 10
        Padding.Right = 5
        Padding.Bottom = 10
        TabOrder = 1
        object pnlCancelarOperacao: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 13
          Width = 185
          Height = 77
          Margins.Left = 0
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 0
          object shpCancelarOperacao: TShape
            Left = 0
            Top = 0
            Width = 185
            Height = 77
            Align = alClient
            Brush.Color = 14342621
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitTop = -4
            ExplicitHeight = 80
          end
          object btnCancelarOperacao: TSpeedButton
            Left = 0
            Top = 0
            Width = 185
            Height = 77
            Cursor = crHandPoint
            Align = alClient
            Caption = 'Cancelar Opera'#231#227'o'
            Flat = True
            OnClick = btnCancelarOperacaoClick
            ExplicitLeft = 80
            ExplicitTop = 32
            ExplicitWidth = 23
            ExplicitHeight = 22
          end
        end
        object pnlConsultarPreco: TPanel
          AlignWithMargins = True
          Left = 193
          Top = 13
          Width = 185
          Height = 77
          Margins.Left = 0
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 1
          object shpConsultarPreco: TShape
            Left = 0
            Top = 0
            Width = 185
            Height = 77
            Align = alClient
            Brush.Color = 14342621
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitTop = -4
            ExplicitHeight = 80
          end
          object btnConsultarPreco: TSpeedButton
            Left = 0
            Top = 0
            Width = 185
            Height = 77
            Cursor = crHandPoint
            Align = alClient
            Caption = 'Consultar Pre'#231'o'
            Flat = True
            OnClick = btnConsultarPrecoClick
            ExplicitLeft = 80
            ExplicitTop = 32
            ExplicitWidth = 23
            ExplicitHeight = 22
          end
        end
        object pnlAbrirCaixa: TPanel
          AlignWithMargins = True
          Left = 381
          Top = 13
          Width = 185
          Height = 77
          Margins.Left = 0
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 2
          object shpAbrirCaixa: TShape
            Left = 0
            Top = 0
            Width = 185
            Height = 77
            Align = alClient
            Brush.Color = 14342621
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitTop = -4
            ExplicitHeight = 80
          end
          object btnAbrirCaixa: TSpeedButton
            Left = 0
            Top = 0
            Width = 185
            Height = 77
            Cursor = crHandPoint
            Align = alClient
            Caption = 'Abrir Caixa'
            Flat = True
            OnClick = btnAbrirCaixaClick
            ExplicitTop = -7
          end
        end
        object pnlCancelarVenda: TPanel
          AlignWithMargins = True
          Left = 569
          Top = 13
          Width = 185
          Height = 77
          Margins.Left = 0
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 3
          object shpCancelarVenda: TShape
            Left = 0
            Top = 0
            Width = 185
            Height = 77
            Align = alClient
            Brush.Color = 14342621
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitTop = -4
            ExplicitHeight = 80
          end
          object btnCancelarVenda: TSpeedButton
            Left = 0
            Top = 0
            Width = 185
            Height = 77
            Cursor = crHandPoint
            Align = alClient
            Caption = 'Cancelar Venda'
            Flat = True
            OnClick = btnCancelarVendaClick
            ExplicitLeft = 80
            ExplicitTop = 32
            ExplicitWidth = 23
            ExplicitHeight = 22
          end
        end
        object pnlCancelarItem: TPanel
          AlignWithMargins = True
          Left = 757
          Top = 13
          Width = 185
          Height = 77
          Margins.Left = 0
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 4
          object shpCancelarItem: TShape
            Left = 0
            Top = 0
            Width = 185
            Height = 77
            Align = alClient
            Brush.Color = 14342621
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitTop = -4
            ExplicitHeight = 80
          end
          object btnCancelarItem: TSpeedButton
            Left = 0
            Top = 0
            Width = 185
            Height = 77
            Cursor = crHandPoint
            Align = alClient
            Caption = 'Cancelar Item'
            Flat = True
            OnClick = btnCancelarItemClick
            ExplicitLeft = 80
            ExplicitTop = 32
            ExplicitWidth = 23
            ExplicitHeight = 22
          end
        end
        object pnlMaisFuncoes: TPanel
          AlignWithMargins = True
          Left = 945
          Top = 13
          Width = 185
          Height = 77
          Margins.Left = 0
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 5
          object shpMaisFuncoes: TShape
            Left = 0
            Top = 0
            Width = 185
            Height = 77
            Align = alClient
            Brush.Color = 14342621
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitTop = -4
            ExplicitHeight = 80
          end
          object btnMaisFuncoes: TSpeedButton
            Left = 0
            Top = 0
            Width = 185
            Height = 77
            Cursor = crHandPoint
            Align = alClient
            Caption = 'Mais Fun'#231#245'es'
            Flat = True
            OnClick = btnMaisFuncoesClick
            ExplicitLeft = 80
            ExplicitTop = 32
            ExplicitWidth = 23
            ExplicitHeight = 22
          end
        end
      end
      object pnlMain: TPanel
        Left = 0
        Top = 60
        Width = 1144
        Height = 580
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object pnlOperacoes: TPanel
          Left = 744
          Top = 0
          Width = 400
          Height = 580
          Align = alRight
          BevelOuter = bvNone
          Padding.Bottom = 20
          TabOrder = 0
          object pnlTotalCompra: TPanel
            Left = 0
            Top = 490
            Width = 400
            Height = 70
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object lblTitleTotalCompra: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 0
              Width = 397
              Height = 19
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alTop
              Caption = 'Total da Compra'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 119
            end
            object pnlEdtTotalCompra: TPanel
              Left = 0
              Top = 19
              Width = 400
              Height = 51
              Align = alClient
              BevelOuter = bvNone
              Caption = 'pnlEdtTotalCompra'
              Padding.Left = 3
              Padding.Top = 3
              Padding.Right = 3
              Padding.Bottom = 3
              TabOrder = 0
              object shpTotalCompra: TShape
                Left = 3
                Top = 3
                Width = 394
                Height = 45
                Align = alClient
                Brush.Color = 12158208
                Pen.Style = psClear
                Shape = stRoundRect
                ExplicitLeft = 168
                ExplicitTop = 0
                ExplicitWidth = 65
                ExplicitHeight = 65
              end
              object lblTotalCompra: TLabel
                AlignWithMargins = True
                Left = 6
                Top = 9
                Width = 388
                Height = 36
                Margins.Top = 6
                Align = alClient
                Alignment = taCenter
                Caption = 'R$ 31,06'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -25
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 102
                ExplicitHeight = 30
              end
            end
          end
          object pnlSubTotal: TPanel
            Left = 0
            Top = 420
            Width = 400
            Height = 70
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 3
            object lblTitleSubTotal: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 0
              Width = 397
              Height = 19
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alTop
              Caption = 'Sub Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 68
            end
            object pnlEdtSubTotal: TPanel
              Left = 0
              Top = 19
              Width = 400
              Height = 51
              Align = alClient
              BevelOuter = bvNone
              Caption = 'pnlEdtTotalCompra'
              Padding.Left = 3
              Padding.Top = 3
              Padding.Right = 3
              Padding.Bottom = 3
              TabOrder = 0
              object shpSubTotal: TShape
                Left = 3
                Top = 3
                Width = 394
                Height = 45
                Align = alClient
                Brush.Color = 12158208
                Pen.Style = psClear
                Shape = stRoundRect
                ExplicitLeft = 168
                ExplicitTop = 0
                ExplicitWidth = 65
                ExplicitHeight = 65
              end
              object lblSubTotal: TLabel
                AlignWithMargins = True
                Left = 6
                Top = 9
                Width = 388
                Height = 36
                Margins.Top = 6
                Align = alClient
                Alignment = taCenter
                Caption = 'R$ 6,46'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -25
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 88
                ExplicitHeight = 30
              end
            end
          end
          object pnlQuantidade: TPanel
            Left = 0
            Top = 350
            Width = 400
            Height = 70
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object lblTitleQuantidade: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 0
              Width = 397
              Height = 19
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alTop
              Caption = 'Quantidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 81
            end
            object pnlEdtQuantidade: TPanel
              Left = 0
              Top = 19
              Width = 400
              Height = 51
              Align = alClient
              BevelOuter = bvNone
              Caption = 'pnlEdtTotalCompra'
              Padding.Left = 3
              Padding.Top = 3
              Padding.Right = 3
              Padding.Bottom = 3
              TabOrder = 0
              object shpQuantidade: TShape
                Left = 3
                Top = 3
                Width = 394
                Height = 45
                Align = alClient
                Brush.Color = 12158208
                Pen.Style = psClear
                Shape = stRoundRect
                ExplicitLeft = 168
                ExplicitTop = 0
                ExplicitWidth = 65
                ExplicitHeight = 65
              end
              object edtQuantidade: TEdit
                AlignWithMargins = True
                Left = 6
                Top = 9
                Width = 388
                Height = 36
                Margins.Top = 6
                Align = alClient
                Alignment = taCenter
                BorderStyle = bsNone
                Color = 12158208
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -25
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                Text = '0,726'
              end
            end
          end
          object pnlPreco: TPanel
            Left = 0
            Top = 280
            Width = 400
            Height = 70
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 4
            object lblTitlePreco: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 0
              Width = 397
              Height = 19
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alTop
              Caption = 'Pre'#231'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 39
            end
            object pnlEdtPreco: TPanel
              Left = 0
              Top = 19
              Width = 400
              Height = 51
              Align = alClient
              BevelOuter = bvNone
              Caption = 'pnlEdtTotalCompra'
              Padding.Left = 3
              Padding.Top = 3
              Padding.Right = 3
              Padding.Bottom = 3
              TabOrder = 0
              object shpPreco: TShape
                Left = 3
                Top = 3
                Width = 394
                Height = 45
                Align = alClient
                Brush.Color = 12158208
                Pen.Style = psClear
                Shape = stRoundRect
                ExplicitLeft = 168
                ExplicitTop = 0
                ExplicitWidth = 65
                ExplicitHeight = 65
              end
              object lblPreco: TLabel
                AlignWithMargins = True
                Left = 6
                Top = 9
                Width = 388
                Height = 36
                Margins.Top = 6
                Align = alClient
                Alignment = taCenter
                Caption = 'R$ 8,90'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -25
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 88
                ExplicitHeight = 30
              end
            end
          end
          object pnlProduto: TPanel
            Left = 0
            Top = 210
            Width = 400
            Height = 70
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            object lblTitleProduto: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 0
              Width = 397
              Height = 19
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alTop
              Caption = 'Produto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 56
            end
            object pnlEdtProduto: TPanel
              Left = 0
              Top = 19
              Width = 400
              Height = 51
              Align = alClient
              BevelOuter = bvNone
              Caption = 'pnlEdtTotalCompra'
              Padding.Left = 3
              Padding.Top = 3
              Padding.Right = 3
              Padding.Bottom = 3
              TabOrder = 0
              object shpProduto: TShape
                Left = 3
                Top = 3
                Width = 394
                Height = 45
                Align = alClient
                Brush.Color = 12158208
                Pen.Style = psClear
                Shape = stRoundRect
                ExplicitLeft = 168
                ExplicitTop = 0
                ExplicitWidth = 65
                ExplicitHeight = 65
              end
              object edtProduto: TEdit
                AlignWithMargins = True
                Left = 6
                Top = 9
                Width = 388
                Height = 36
                Margins.Top = 6
                Align = alClient
                Alignment = taCenter
                BorderStyle = bsNone
                Color = 12158208
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -25
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                Text = '00025'
              end
            end
          end
          object pnlImageProduct: TPanel
            Left = 0
            Top = 0
            Width = 400
            Height = 210
            Align = alClient
            BevelOuter = bvNone
            Padding.Left = 120
            Padding.Top = 10
            Padding.Right = 120
            Padding.Bottom = 10
            TabOrder = 5
            object imgProduto: TImage
              Left = 120
              Top = 10
              Width = 160
              Height = 190
              Align = alClient
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000002000000
                02000806000000F478D4FA00002EF04944415478DAEDDD0794A55599EEF12D8E
                285C2EE808976140C711C534E86219A14922B290D0C320485F4149263000268C
                08A8A398001DC5808018064B542489204A10308B8CD771CCA360761C50D01195
                FBEEDAF541870A277C7B3FDFDEEFFFB7D65EDFA2E9AE7AABEBD4799EAE3AE73D
                770A0000C09D3BA907000000E55100000070880200008043140000001CA20000
                00E0100500000087280000003844010000C0210A0000000E5100000070880200
                008043140000001CA2000000E0100500000087280000003844010000C0210A00
                00000E5100000070880200008043140000001CA2000000E01005000000872800
                00003844010000C0210A0000000E5100000070880200008043140000001CA200
                0000E010050000008728000000384401008661B99D17D9D9C3CE8DEA6100B48F
                0200E8ED6FE77D76EE6CE78B76760994000099510000AD18FE67DA596BA55FA3
                0400C88E0200E8CC17FE1D4A0080AC280080C662E1DFA10400C886020094374A
                F877280100B2A00000658D13FE1D4A0080DE510080722609FF0E250040AF2800
                4019D3847F871200A037140020BF3EC2BF430900D00B0A0090579FE1DFA10400
                981A0500C82747F877280100A6420100F2C819FE1D4A008089510080FE9508FF
                0E2500C044280040BF4A867F871200606C1400A03F8AF0EF5002008C850200F4
                4319FE1D4A008091510080E90D21FC3B94000023A10000D31952F87728010096
                4401002637C4F0EF5002002C8A02004C66C8E1DFA1040058100500185F0DE1DF
                A1040098170500184F4DE1DFA1040058030500185D8DE1DFA104005805050018
                4DCDE1DFA10400B81D0500585A0BE1DFA104009845010016D752F87728010028
                00C0225A0CFF0E2500708E0200CCAFE5F0EF500200C72800C09A3C847F871200
                3845010056E529FC3B9400C0210A0070078FE1DFA10400CE500080C473F87728
                018023140080F05F19250070820200EF08FF35510200072800F08CF05F182500
                681C05005E11FE4BA304000DA300C023C27F749400A05114007843F88F8F1200
                348802004F08FFC9510280C65000E005E13F3D4A00D0100A003C20FCFB430900
                1A410140EB08FFFE510280065000D032C23F1F4A0050390A005A45F8E7470900
                2A4601408B08FF72280140A52800680DE15F1E2500A81005002D21FC75280140
                6528006805E1AF4709002A4201400B08FFE1A0040095A000A07684FFF0500280
                0A50005033C27FB82801C0C05100502BC27FF82801C08051005023C2BF1E9400
                60A02800A80DE15F1F4A0030401400D484F0AFD7757676B6F34BF52000120A00
                6AF1143B6704C2BF66DFB0B353A00400834001400D0EB3F30EF510E805250018
                080A00868EF06F0F250018000A00868CF06F17250010A30060A808FFF6510200
                210A008688F0F7831200885000303484BF3F9400408002802121FCFDA2040085
                51003014843F2801404114000C01E18F0E25002884020035C21FABA304000550
                00A044F86321940020330A0054087F2C8512006444018002E18F515102804C28
                00288DF0C7B82801400614009444F863529400A06714009442F8635A9400A047
                14009440F8A32F9400A0271400E446F8A36F9400A0071400E444F823174A0030
                250A007221FC911B2500980205003910FE288512004C880280BE11FE288D1200
                4C8002803E11FE50A1040063A200A02F843FD42801C0182800E803E18FA1A004
                0023A200605A843F868612B080DB66C24676F9A89D43EFF4A4F01DF53CD0A200
                601A843F868A12B01A0BFFF5EC72A99D47D9F9819D6DAC04FC4C3D1774280098
                14E18FA1A304CCB1F05FDB2E17D8D979A55FBED6CE8E56026E54CF070D0A0026
                41F8A316EE4B8085FF9DED72969D7DE6F9DFF13B02BB5909F8A37A4E944701C0
                B8087FD4C67509B002F02EBB3C6391DF12CBC193AD04DCA69E15655100300EC2
                1FB57259022CFC5F6D97578CF05B4FB20270947A5E944501C0A8087FD4CE5509
                B0F03FC22E278DF1475E6425E04DEAB9510E0500A320FCD10A1725C0C2FF2976
                3973823FFA542B01EF57CF8F322800580AE18FD6345D022CFC77B7CBC7EDDC65
                823F7EAB9D3DAD047C4AFD71203F0A001643F8A3554D96000BFF6576B9C4CE3A
                53BC99DF85F4F4C0AFA83F1EE44501C042087FB4AEA91260E1BFA55D3E6767FD
                1EDE5CFC3B898B82BEABFEB8900F0500F321FCE1451325C0C27F73BB5C696793
                1EDFECF7422A01BF507F7CC8830280D511FEF0A6EA1260E1BFB15DAEB2B37986
                37FFD5907E1CF05BF5C789FE5100B032C21F5E5559022CFC37B0CB15761E9AF1
                DDC4C714ECC1B6C0F65000D021FCE15D5525C0C27F5DBB5C6467BB02EFEE8376
                9EC2B6C0B650001011FEF9FDDE4E7C40D596EA41B0A8F7D939483DC452E6F6FB
                9F63678F82EFF6CD56005EA8FED8D11F0A0008FFFC62F8C73BEAF8B4AA0BED6C
                A31E08F3FAA29D5DEC0CFAD5F12CFCE3FDF619769E2A78F7CFB71270A2FAEF00
                FDA000F846F8E7D785FF67E6FE3B7EDBF67C3B8F550F86555411FE911580B7D8
                45B9B73FBE70D0BFAAFF1E303D0A805F847F7EAB877F8712302C3585FFCBECF2
                5AF118715BE0EE56022E51FF7D603A14009F08FFFC160AFF4E2C011F0E657F86
                8B35D514FE4FB7CBBBD573CC894F0BDCC14AC0D7D483607214007F08FFFC960A
                FFCEDA76CEB6B3A77A60A76A0AFF27DA65C6CE5AEA5956F2F39016057D5F3D08
                264301F085F0CF6FD4F0EFC41210EFD8FF513DB83335857F7C6A627CBADF242F
                EE935B7C664B2C01553C7512ABA200F841F8E7376EF877E253BAE24BB73E59FD
                013811F7E5C7CF530DE1FF88906E4FFF5B3DCB22BE1CD2B6C09BD583603C1400
                1F08FFFC260DFF0E25A08CCF86F479BA453DC8522CFC1F105259D9503DCB08E2
                CB072F675B605D2800ED23FCF39B36FC3BB104BCCBCEA1EA0FA8513585FF6676
                B9DACEBDD4B38C2116D883D816580F0A40DB08FFFCFA0AFF4EFC9A8C9FB367A9
                3FB0C6D414FEF15FFC71BFFF83D4B34CE0042B002F510F81D15000DA45F8E7D7
                77F877E2D7E5DB43FA1C627A3585FFFF0AE9F6F428F52C5338D24AC0C9EA21B0
                340A409B08FFFC7285FFCA5E6FE768F5075AB99AC23F3E23242E887ABC7A9669
                3F143B2BAC04CCA807C1E22800ED21FCF32B11FE1D4AC0E46A0AFFF8F88FB85E
                775FF52C3D89DB0277B51250E26B0413A200B485F0CFAF64F8778EB5F32AF507
                5E996AC23FB202704A68EF711F3785B42DF05AF520981F05A01D47D839493D44
                E314E1DF890FAC7A9DFA2FA012B585FFF17679A57A8E4C7E1AD2A2A01FAA07C1
                9A28006D201CF253867F87CFF3D22EB6F34FA19EF0F750DCBF6D675BB6050E0F
                05A07E84427E4308FFCEE1213D43006B3ACFCE3E76AA584663E17F805DDEAF9E
                A3902FD8D9C94A4015C5CC0B0A40DD08FFFC8614FE1D1EEBB1A6DAC27F37BB9C
                1386B9DF3F974F86B42DF04FEA41905000EA45F8E737C4F0EFC497867D6718D6
                ABC3A9D416FECBEC72899D75D4B3089C61E710B6050E0305A04E847F7E430EFF
                CEFE21AD5FF55C02AA0AFFC80A80F7AFDFD75A0178857A0850006AE4FDCEA384
                1AC2BFE3B9045417FE1D2B01F1BB37CF54CF21F45C2B01FFA21EC23B0A405D08
                FFFC6A0AFFCE5E76E2D6354F3F4FAE36FCA3B9C53F1F09E9190B1EFDC5CE7E56
                02CE560FE21905A01E847F7E35867F67B99D7867EAA104541DFE1D2B01EB86F4
                B4C565EA5944E2E76F172B0197AB07F18A025007C23FBF9AC3BFB3A79D0F87B6
                1F5CD644F877AC04DCC32E9FB3F360F52C22715BE0765602AE530FE2110560F8
                08FFFC5A08FFCE4E21BDA04C8B25E0E376568446C2BF63256033BB7CDECEA6EA
                59447E62676B2B013F520FE20D0560D808FFFC5A0AFF4E8B25E043769E6AE7CF
                EA4172B012F09090BE137077F52C22DF0A695BE0AFD583784201182EC23FBF16
                C3BF137FAE7CA19DF5D583F4A0E9F0EF5809D836A4C704B454DCC6718D9D9DD9
                16580E05609808FFFC5A0EFFCEA3430A949A4B808BF0EF5809D83BA46707787C
                5A6714BF73B5979500179F6F350AC0F010FEF97908FF4E2C017105EB3DD4834C
                C055F877AC04C497053E453D87D069769EC6B6C0FC2800C342F8E7171F75BC6B
                48DF6EF462CB90CACE86EA41C6E032FC3B56028EB3CB31EA39848EB702F02AF5
                10ADA3000C07E19F5F0CFF5D427A65326F6209F8A29DBBA9071981EBF0EF5809
                38D52E87AAE7103ACC4AC03BD543B48C02300C847F7E9EC33F7ABD9DA3D5438C
                E8C090D61BBB36B72DF063212D79F2286E0BDCD74AC0C7D483B48A02A047F8E7
                47F8D713FE51BCE38FDF01F8A07A10B5B96D819FB6B3B57A16913F84B42DF04A
                F5202DA2006811FEF911FE75857F871230C74AC03D43DA11F040F52C223786B4
                23E01BEA415A4301D021FCF323FCEB0CFF0E25608E95807BDBE5EAE0775BE00D
                216D0BFCB17A909650003408FFFC08FFBAC3BF4309986325203E90337E27A0E6
                BD0ED3F86648DF09F88D7A90565000CA23FCF323FCDB08FF0E25608E9580ED43
                5AEE7457F52C225785F49800B605F680025016E19F1FE1DF56F877280173AC04
                3CD12E33C1EFB6C073ECECC3B6C0E95100CA21FCF323FCDB0CFF0E25608E9580
                E7D8E56DEA3984DE6305E019EA216A47012883F0CF8FF06F3BFC3B9480395602
                5E639797ABE7103ACE4AC0B1EA216A4601C88FF0CF8FF0F711FE1D4A40982D00
                F1FEFBBD760E56CF22F4742B01A7AA87A81505202FC23F3FC2DF57F8772801E1
                F66D81E7DAD94D3D8B48BC1DEC6D25E013EA416A4401C887F0CF8FF0F719FE1D
                4A40B87D5BE0A5761EA39E4524BEBAE7E3AD045CA51EA43614803C08FFFC087F
                DFE1DFA10484D912105FE93106E016EA5944E26E80B823E09BEA416A4201E81F
                E19F1FE14FF8AF8C1210664BC07D42DA16B8897A1691EB43DA1678BD7A905A50
                00FA45F8E747F813FEF3A10484D912F030BB5C11FC6E0B8CAF1710BF1370A37A
                901A5000FA43F8E747F813FE8BA10484D912B06348DB02EFA29E4524BE7260DC
                16F807F520434701E807E19F1FE14FF88F821210664BC0BE76392BF8DD16F831
                3B4F625BE0E22800D323FCF323FC09FF715002C26C0938C22E27A9E7103AC50A
                C0E1EA21868C02301DC23F3FC29FF09F042520CC9600EFB79F575909385E3DC4
                5051002647F8E747F8FBBEF39E96FB1230B72DF0743B07AA67113AD44AC069EA
                218688023019C23F3FC29FF0EF03256066F6C180715BE0AEEA5944E26D60B995
                800BD4830C0D05607C847F7E843FE1DF274A40DA1678999D47AA671189DB021F
                6725E01AF520434201180FE19F1FE14FF8E7400998091B85B42DF0FEEA59447E
                1DD28E806FA907190A0AC0E808FFFC087FC23F274AC04CB86F48DB023756CF22
                F2233BDB5809B8413DC81050004643F8E747F813FE25500266C25621FD38C0EB
                B6C0EBEC6CCFB6400AC02808FFFC087FC2BFB4F8FCF053D443A85809D8D92E17
                06BFDB022F0F695BE01FD5832851001647F8E747F813FE2ADE4BC07E216D0BF4
                EA6C3B2B3C6F0BA4002C8CF0CF8FF027FCD5BC978023ED72A27A0EA1B7590178
                9E7A08150AC0FC08FFFC087FC27F28BC978037D9E505EA39845E6E25E09FD543
                285000D644F8E747F813FE43E3B604CC6D0B3CD3CE01EA59840EB11270BA7A88
                D22800AB22FCF323FC09FFA1F25C02D6B6CB79217D6D7AF4A790B6057E523D48
                4914803B10FEF911FE84FFD0792E01EB85F4F4C087AB671189DB0277B412F045
                F520A5500012C23F3FC29FF0AF85E71210B705C675B99BAB6711F9959D655602
                BEAD1EA4040A00E15F02E14FF8D7C6730988E11F4BC046EA59447E18D2B6C09F
                AA07C9CD7B0120FCF323FC09FF5A792E01F1C70097D9594F3D8BC8D7EDECD0FA
                B640CF0580F0CF8FF027FC6BE7B904C4AFDDF383DF6D8197DAD9ADE56D815E0B
                00E19F1FE14FF8B7C27309D8DF2E1F50CF213413D2B6C0DBD483E4E0B10010FE
                F911FE847F6B3C9780E7DBE5CDEA39844EB60270A47A881CBC1500C23F3FC29F
                F06F95E71210D705371982233ADA4AC01BD443F4CD530138CECE31EA211A47F8
                13FEAD735902E6B6057EC8CE0AF52C42075A0938533D449FBC1400EE98F323FC
                B98D79E1B504C46D8117D8D9593D8BC8AD76F6B412F029F5207DF15000B863CE
                8FF0E736E68DD712B07E484F0FDC4A3D8BC8CD216D0BFCB27A903EB45E00B863
                CE8FF0E736E695D712B0B15DAEB6735FF52C22715BE0D65602BEAB1E645A2D17
                00EE98F323FCB98D79E7B504DC2FA46D811BAA6711F97E48DB027FAE1E641AAD
                1600EE98F323FCB98D21F15A021E19D28F03D655CF22F2B5907E1C70937A9049
                B55800B863CE8FF0E7368655792D01BBDAE5DCE0775BE02576F6A8755B606B05
                803BE6FC3C877FFC7A89CF873E423D0806C96B0938D02E67A8E7108A4F8F3CA0
                C66D812D1500C23F3FEFE1FF0E3BCF520F8241F35A025E6C9713D473089D6805
                E0F9EA21C6D54A0120FCF323FC097F8CC66B093829F8FEEED80BAC04BC453DC4
                385A2800847F7E843FE18FF1B82B015600D6B2CB5976F655CF22147F14F041F5
                10A3AABD0010FEF911FE843F26E3B104C46D8117D979AC7A1691B82D70772B01
                97A8071945CD0580F0CF8FF027FC311D8F256003BB5C6EE761EA59447E1BD2D3
                03BFAA1E6429B51600C23F3FC29FF0473F3C96804D42DA16781FF52C22BF0869
                51D0F7D4832CA6C60240F8E747F813FEE897C712B0855DAE0A7EB705C6F08F2B
                837FA91E6421B51500C23FBFB8E7FA7176AE530F2240F823278F25E0D176F9AC
                9D75D4B3887C25A41F07FC4E3DC87C6A2A00847F7E31FC77B2F36FEA4104087F
                94E0B104EC16D2B6C03BAB6711B938A497111EDCB6C05A0A00E19F1FE14FF8A3
                0C8F25E060BB9CA69E43E84C3B070D6D5B600D0580F0CF8FF027FC5196C712F0
                32BBBC563D87D01BAD00BC583DC4CA865E0008FFFC087FC21F1A1E4BC05BEDF2
                5CF51C4247590938493D4467C80580F0CF8FF027FCA1E5AA045801888F03F8B0
                9D27AA67115A6125E0C3EA21A2A11600C23F3FC29FF0C730782B01770DE98171
                DBAB671189DB029F6025E052F520432C00847F7E843FE18F61F15602E2B6C02B
                ED6CA99E4524EE5AD9C14AC0B5CA2186560008FFFC087FC21FC3E4AD046C1AD2
                B6C07BAB6711F95948DB027FA01A60480580F0CF8FF027FC316CDE4AC003EDF2
                393BF754CF22F21D3BCB54DB0287520008FFFC087FC21F75F05602B6B64BFC79
                B8D76D815F0A695BE02DA5DFF1100A00E19F1FE14FF8A32EDE4AC09E7639C7CE
                5AEA5944E24B282FB712706BC977AA2E00847F7E843FE18F3A792B0187DAE554
                F51C4267D839A4E4B640650120FCF323FC097FD4CD5B0938C62EC7A9E7107A9D
                158097957A67AA0240F8E747F813FE6883B71210BF760F53CF2174849580B796
                78478A0240F8E747F813FE688B9B1230B72D70C6CEDEEA5944FE12D2B6C08FE4
                7E47A50B00E19F1FE14FF8A34D9E4AC0DDEC72899D6DD5B388C40703EE6225E0
                B29CEFA4640120FCF323FC097FB4CD5309B87B483B021EA29E45246E0BDCCE4A
                C075B9DE41A90240F8E747F813FEF0C15309D8CC2ED7D8D94C3D8BC84F42DA16
                F89F39DE78890240F8E747F813FEF0C55309787048DF09B8877A1691FFB0B3AD
                95805FF5FD86731700C23F3FC29FF0874F9E4AC0B2901E13E0755BE0E7ED3CAE
                EF6D81390B00E19F1FE14FF8C3374F25602FBB7C34F8DD16786148DB02FFDCD7
                1BCC550008FFFC087FC21F883C958067D8E55DEA39844EB3F3B4BEB605E62800
                847F7E843FE10FACCC530938D62EAF52CF21F46A2B00C7F4F186FA2E00847F7E
                843FE10FCCC7530978B75D9EAE9E43E8D95602DE31ED1BE9B30010FEF911FE84
                3FB0181725606E5BE0D976F652CF2212B7053EC94AC047A779237D1500C23F3F
                C29FF00746E1A504AC6B978BED2C53CF22F23F216D0BBC62D237D0470120FCF3
                23FC097F601C2FB173827A88DCAC04FC75483B021EA49E45246E0B5C6625E01B
                93FCE1690B00E19F1FE14FF80393786948F7D14DB31270AF90B6056EAA9E45E4
                063B5B5B09F8F1B87F709A0240F8E747F813FEC034BC94807F08E93B011BA867
                11F9F790B605FED7387F68D20240F8E747F813FE401FBC9480ED427A4CC0DDD4
                B3885C6DE7F1E36C0B9CA40010FEF911FE843FD0272F25606FBB7C24F8DD1678
                AE9DBD47DD16386E0120FCF323FC097F20072F25203E0BE2EDEA39844EB50230
                D28E84710A00E19F1FE14FF80339792901C7DBE595EA39848EB31270EC52BF69
                D40240F8E747F813FE4009CD97002B00F13EE5543B87A867117AA69580772FF6
                1B462900847F7E843FE10F94E4A104C46D81E7D8D9433D8B48DC16B88F95808F
                2FF41B962A00847F7E843FE10F28782801715BE0A7ED6CAD9E45E4F7216D0BFC
                DC7CFF73B10240F8E747F813FE80928712704FBB5C65E701EA5944FE3BA41D01
                FF6FF5FFB1500120FCF323FC097F60083C9480BF0BE979F27FAB9E45E4FA90B6
                055EBFF22FCE570008FFFC087FC21F18120F25E0A176B9D2CEFAEA5944E27700
                E27702FEBBFB85D50B00E19FDFCD21FD3CCA63F84727DB799E7A08006BF05002
                E23FBC2E55CF2174B915801DBBFF58BD00BCC5CE51EA091D68FE0B6D11CB437A
                1DEFBBA80701B08AE6EF97AC00C4EF3E1EA69E43E8082B006FEDFE831F01E834
                FFC5B688C7D939CFCE3AEA4100CC6AFEFEC8C2FF18BB1CA79E43E87516FE2F5B
                F9177810A056F35F748B88DF8A3B3F500200B5E6EF872CFC0F0D6931905767D8
                39C40AC06D2BFF224F03D46BFE8B6F11940040ABF9FB1F0BFFB808E813C1EF0B
                045D6467B985FFADABFF0F16010D43F35F848BA004001ACDDFEF58F8C7075CC7
                07FD79BD7FF9929D1D177A896056010F47F35F8C8BA0040065357F7F63E1FF40
                BBC40D78F754CF22F21D3BCB2CFC7FB9D06FE0C58086A5F92FCA45500280329A
                BF9FB1F0DF34A4C53FF756CF22F2333BDB58F8FF60B1DFC4CB010F4FF35F9C8B
                A0040079357FFF62E1BF41480B7FB654CF2272939D1D2CFCAF5DEA378E530022
                4A4019CD7F912E821200E4D1FCFD8A85FF5DED72B19DEDD5B388C407FA3DC1C2
                7FA46547E3168088125046F35FAC8BA00400FD6AFEFE64EEE57FCFB2B38F7A16
                A11516FE1F1EF5374F5200224A4019CD7FD12E821200F4C3C5FD881580B8E1EE
                B9EA39848EB2F03F699C3F30690188280165B8F8E25D002500988E8BFB0F0BFF
                B8E1EEB5EA3984DE68E1FFE271FFD0340520A20494E1E28B7801940060322EEE
                372CFC0FB6CB69EA3984CEB473D0EA5BFE46316D0188280165B8F8625E002500
                188F8BFB0B0BFFDDEC72AE9D3BAB6711890F78DCD3C2FF8F93FCE13E0A404409
                28C3C517F5022801C0688E0CE965B79B66E1FF28BB5C16FCDE277C25A42D7FBF
                9BF40DF45500224A40199400BF5FF0C0520EB7738A7A88DC2CFCB7B0CB557636
                54CF22F23D3B5B2FB6E56F147D16808812500625801200ACCE4BF86F12D296BF
                FBA86711F945485BFEBE37ED1BEABB004494803228019400A0E325FCE396BFCB
                ED3C4C3D8BC86F43FAB6FF57FB7863390A404409288312400900BC84FFDA21BD
                B4ED63D5B388C42D7FBB5BF85FD2D71BCC5500224A401994004A00FCF212FE31
                ABE286BB7DD5B3081D60E1FFC13EDF60CE02105102CAA0045002E08F8BF08FAC
                00C40D7747A8E7107A8185FF5BFA7EA3B90B4044092883124009801F9EC23F6E
                B83B413D87D08916FECFCFF1864B14808812500625801280F6790AFF03ED7286
                7A0EA10F85F4ADFFB1B7FC8DA2540188280165500228016897A7F0DF35A42D7F
                7751CF22121FECB7C7A45BFE4651B2004494803228019400B4C753F83F22A4A7
                FBADAB9E45E46B213DDDEFA69CEFA4740188280165500228016887A7F0BF9F5D
                AE097EB7FC7D3FA4453F3FCFFD8E140520A204944109A004A07E9EC27FE390B6
                FCDD573D8BC8AF425AF1FBDD12EF4C5500224A401994004A00EAE529FCD70FE9
                C57DB652CF22727348DFF6FF72A977A82C001125A00C4A002500F5F114FE71CB
                DF05767656CF2212B7FCC597F5FD54C977AA2E001125A00C4A002500F5F014FE
                3187E2D3DD56A867113AD0C2FFCCD2EF74080520A204944109A00460F8DC847F
                6405206EB83B4A3D87D0D116FE6F50BCE3A114808812500625801280E1F216FE
                71C3DD9BD573089D6CE17FA4EA9D0FA90044948032280194000C8FB7F0DFDF2E
                1F50CF2134636745AE2D7FA3185A018828016550022801180E6FE1BF4B485F83
                5EB7FC5D6A67B79C5BFE4631C402105102CAA0045002A0E72DFC1F1ED2D3FDD6
                53CF22F2753B3B58F8DFA81E64A80520A204944109A00440C75BF86F1ED296BF
                8DD4B388FC30A42D7F3F550F120DB900449480322801940094E72DFC63E8C7F0
                DF5C3D8B48DCF2B7CCC2FFDBEA413A432F001125A00C4A002500E5780BFFF8ED
                FECBEC3C5C3D8BC8EF43DAF2F745F5202BABA1004494803228019400E4E72DFC
                E396BFF3ECECA29E45E44F76965BF87F523DC8EA6A29001125A00C4A002500F9
                780BFF983171C3DD01EA59840EB6F03F433DC47C6A2A001125A00C4A002500FD
                7315FE91158037DAE585EA39845E6EE1FFCFEA2116525B018828016550022801
                E88FC7F08F1BEE4E54CF21F4360BFFE7A987584C8D0520A204944109A004607A
                1EC37F3FBB9CA59E43E8EC90B6FCFD593DC8626A2D001125A00C4A00250093F3
                18FEF1257D2F0C7EB7FC5D6E6717F596BF51D45C00224A401994004A00C6E731
                FCB70AE9E97EEBAB6711B9CECEF643D8F2378ADA0B4044092883124009C0E83C
                86FF7DED72B59D8DD5B388FC28A42D7F37A80719550B0520A204944109A00460
                691EC33F6EF9BBCACEFDD5B388FCDACEB616FEDF520F328E560A404409288312
                4009C0C23C86FFBA217DDBFF91EA5944E296BFC759F85FA31E645C2D15808812
                5046FC7B7EA97A08114A0016E231FCE303FDCEB5B3AB7A1691BF84B4E5EF02F5
                209368AD00449480324EB0F312F510229400ACCE63F8C7FC38DDCE81EA59840E
                B5F03F4D3DC4A45A2C001125A00C4A0025000EC33FB202E0FD7EF6180BFF57AB
                879846AB0520F27EE32C85124009F0CC6BF8C70D7727ABE7103AC5C2FF70F510
                D36AB90044948032280194008FBC86FFBE216DF95B4B3D8BC8C7EC3C69E85BFE
                46D17A0188280165500228019E780DFF1DED7271F0BBE5EFCA90B6FCFD413D48
                1F3C148088125006258012E081D7F07F985DAE087EB7FC7D23A4E7FA57B1E56F
                145E0A40440928831240096899D7F0BF4F485BFE3651CF2272BD9DAD2DFCAF57
                0FD2274F05207A859DAA1FB55909CF25E0B176CE097EFF95D432AFE1BF61485B
                FEB650CF22F29B90FEE5FF4DF5207DF35600A2184CAF530FE180E712F0E8907E
                4E4A096887D7F08F5BFE2EB5F318F52C2271CBDFE32DFCAF520F9283C7021051
                02CAA00450025AE035FCEF1CD296BFDDD4B388C42D7F7B5BF87F423D482E5E0B
                4044092883124009A899D7F08FD9F05E3B07AB67117ABA85FFA9EA2172F25C00
                224A401994004A408D5C867F6405E0357679B97A0EA1632DFC8F530F919BF702
                105102CAA00450026AE239FC9F6397B7A9E7107A8F85FF33D443944001482801
                655002280135F01CFE4FB4CB4CF0BBE52F3E83679F16B6FC8D820270074A4019
                94004AC090790EFFED43BA7DDE553D8B487CA47FDCF2778B7A90522800ABA204
                944109A0040C91E7F0DFD22E9F0B7E6F97F139FEF1B9FEBF510F521205604D94
                803228017EEF6C87C873F8DF3BA42D7F9BAA6711B9C1CE635ADBF2370A0AC0FC
                2801655002280143E039FCEF19D2BFFC1FA89E4524EEF58FFFF2FF867A10050A
                C0C2280165500228014A9EC33F6EF9BBC4CE36EA5944E22BFAC59FF95FA91E44
                8502B0384A401994004A8082E7F08F5BFEE2EBDA2F57CF2212B7FCED6BE1FF31
                F5204A1480A55102CAA00450024AB9CDCEB383D3F09FFD0B9899DD7077A87A0E
                A1C32CFCDFA91E428D02301A4A401994004A406EF15F7E4FB5F341F5202A16FE
                71C3DD31EA39848EB7F07F957A8821A0008C8E125006258012900BE13F139E15
                1C7FE7C39C66E1EFF93B1FABA0008C87125006258012D037C27F26EC6D978F04
                BF5BFECEB7B397972D7FA3A0008C8F125006258012D017C27F266C1BD26D6A1D
                F52C22D7D8D9D9D396BF51500026430928831240099816E13F131E12D273FDEF
                AE9E45E45B213DD7FFD7EA4186860230394A401994004AC0A408FF99B0995D3E
                1F7C6FF9DBC6C2FF47EA41868802301D4A401994004AC0B808FF99708F90FEE5
                FF60F52C2237D9D9CEC2FF3AF520434501981E25A00C4A0025605484FFCCECCF
                FAE396BF65EA5944FE18D296BFCBD5830C1905A01F94803228019480A510FE69
                CB5F7CB4FF3FA9671189B781FD2CFCCF560F32741480FE5002CAA004500216E2
                3EFC232B0071C3DD33D573083DD7C2FF5FD443D48002D02F4A401994004AC0EA
                08FF301BFE71C3DDB1EA39845E6BE1FF0AF510B5A000F48F125006258012D021
                FCC36CF83FCD2EEF51CF2174BA9D43AD00DCA61EA41614803C28016550022801
                847F980DFF7F0CE9D5FDBC6EF9FBA49DE516FE7F520F52130A403E9480322801
                7E4B00E11F66C37F1BBB7C3AF8DDF2F7053B3BB1E56F7C1480BC2801655002FC
                9500C23FCC86FF83427AAEFF5FAB6711F976485BFE7EA91EA4461480FC280165
                5002FC9400C23FDCBEE5EF6A3BF752CF22F2D390B6FCFD503D48AD2800655002
                CAA004B45F0208FF301BFE1B84F42FFF7F50CF2212B7FC6D6FE1FF75F52035A3
                00944309288312D06E0920FCC36CF8DF2DA4CFF376EA59446EB5B3AB85FF67D4
                83D48E02501625A00C4A407B2580F00FB76FF99BB1B3B77A16D55F819D1516FE
                33EA415A4001288F12500625A09D1240F8CFB1021037DC3D5B3D87D09116FE27
                AB87680505408312500625A0FE1240F8CFB1F08F1BEE5EAD9E43E8040B7FAF5F
                CF595000742801655002EA2D0184FF1C0BFF43ECF25EF51C42EFB373305BFEFA
                4501D0A204944109A8AF0410FE732CFC77B7CBB9C1EF96BF4FD9D9D3C2FF56F5
                20ADA100E85102CAA004D4530208FF3916FE5BDBE5D2E077CBDF97EDEC68E17F
                B37A901651008681125086F71270999DBBA90719C1D176DEA01E42CDC2FF0121
                3DD77F43F52C22DF0D69D10F5BFE32A1000C0725A00CAF25A0A6DBD70D76760C
                29005CB2F0FFDB90B6FCFD9D7A16919F8714FEDF570FD2320AC0B0D474275D33
                6F25A0C6DB95DB1230B7E5EF0A3B0F55CF2212B7FCC56FFB7F4D3D48EB2800C3
                53E39D758DBC94809A6F4FEE4A8085FFDA213D5E6307F52C22F1817EBB5BF85F
                A21EC4030AC030D57CA75D93D64B400BB7233725606ECBDF5976F651CF22F464
                0BFF7F550FE1050560B85AB8F3AE41AB25A0A5DB8F8B126005206EB87B9E7A0E
                A1E75BF89FA81EC2130AC0B0B574273E64AD9580166F374D97000BFF163F67E3
                78B385FF0BD543784301183EEF770CA5B452025ABEBD3459022CFC0FB2CBE9EA
                39843E60E7A96CF92B8F02508796EFD487243EF73CFE5DD77A47E4E176D25409
                B0F07F42485BFEFE4A3D8B487CC063DCF2F747F5201E5100EAE1E1CE7D08DE69
                E7F0505F09F074FB68A20458F83F2AA4E54C5EB7FC7D35A4A7FBFD563D885714
                80BA78BA9357AAAD0478BC5D545D022CFCB7B0CB55C1EF96BFEF85B4E8E717EA
                413CA300D4C7E39DBD422D25C0F3EDA1CA1260E1FF37216DF9FB7BF52C2271B5
                6F0CFFAA3E6F2DA200D4C9F39D7E49432F01DC0E2A2C015600DE6A97E7AAE710
                F95D48DFF6FF8A7A1050006AC69D7F19432D017CFEEF505509B002B0AE5D2EB7
                F308F52C85C52D7F7B58F85FAC1E040905A06E844019432B017CDED7545B09D8
                28A41F03DC4F3D4B41F1A97EEF570F813B5000EA471894319412C0E77B61B595
                80FB8654023656CF52C08B2CFCDFA41E02ABA200B4815028435D02F83C2FADB6
                12B055484F055C5F3D4B462759F81FA51E026BA200B4837028435502F8FC8EAE
                B612B0B35D2EB47317F52C19C417377A325BFE868902D096C3ECBC433D8403A5
                4B00E13FBEDA4AC07E2185654B3E1DD24BFBB2E56FA02800EDA1049451AA0410
                FE93ABAD04C46F93BF453D474FAEB5B38385FF4DEA41B0300A409B280165E42E
                0184FFF46A2B01F181722F50CF31A51F84B4E8E767EA41B0380A40BB280165E4
                2A01847F7FAA29015600E27DF299760E50CF32A15F8514FEDF510F82A55100DA
                460928A3EF1240F8F7AFA612B0B65DCEB3B38B7A9631DD12D296BF2FA907C168
                2800EDA30494D1570920FCF3A9A904AC17D2D3031FAE9E654471CBDF720BFF8B
                D483607414001F2801654C5B0208FFFC6A2A01FF27A445419BAB6719C1C116FE
                67A887C07828007E5002CA98B40410FEE5D45402E2AAE058023652CFB288975A
                F8BF5E3D04C64701F0851250C6B82580F02FAFA612107F0C70999DF5D4B3CCE3
                AD16FE47A887C0642800FE5002CA18B50410FE3A359580F880C0F3C3B0B6057E
                C4CE0A2B007F510F82C950007CA20494B1540920FCF56A2A01FBDBE503EA39E6
                7CD6CEAE6CF9AB1B05C02F4A40190B9500C27F386A2A01714990FA55F5BE1ED2
                96BF1BD57F1F980E05C0374A4019AB9700C27F786A2A0127DAE548D1BBFFCF90
                16FDFC44FDF780E95100400928A32B014707C27FA8AA280173DB023F646745E1
                771DB7FC6D6BE1FF1FEABF03F4830280881250C617EC3C5A3D0416F51E3BCF50
                0FB194B96D8117D8D9B9D0BBFCBD9D9D2CFC3FAFFED8D11F0A003A94007817D7
                EFEE63A78A07B65909583FA4A7076E95F95DFD39A42D7F17AA3F66F48B028095
                5102E05555E1DFB112B0B15DAEB1F3F719DFCD2116FEA7AB3F56F48F0280D551
                02E04D95E1DFB11270FF90B6056E98E1CDBFD2C2FF35EA8F11795000301F4A00
                BCA83AFC3B56021E19D28F03D6EDF1CDBEDDC2FF39EA8F0DF95000B0104A005A
                D744F877AC04EC6A9773433FDB023F6A673F2B007F567F5CC8870280C55002D0
                AAA6C2BF6325E040BB9C31E59BB9C2CE2E16FEFFA3FE78901705004BA104A035
                4D867FC74AC08BED72C2847FFCDFEC6CC7963F1F280018052500AD683AFC3B56
                024EB6CBF3C6FC633FB6B3B585FF0DEAF951060500A3A204A0762EC23FB202B0
                965DCEB2B3EF887FE4BF42DAF2F7EFEAD9510E0500E3A004A0566EC2BF33B72D
                F0223B8F5DE2B7C62D7F3B5BF85FAD9E19655100302E4A006AE32EFC3B560236
                B0CBE5761EB6C06FF98B9DBD2CFCCF53CF8AF2280098042500B5701BFE1D2B01
                9B84B428E83EF3FCEFA759F8BF573D233428009814250043E73EFC3B5602B6B0
                CB5561D56D81C75AF81FA79E0D3A14004C831280A1BAC4CE1E81F0BF9D9580C7
                D8E53376D6B1F32E0BFF67A96782160500D3A20460683E1B52F8DFA21E6468AC
                04EC669783ECFC5FB6FC8102803E50023014843F30220A00FA4209801AE10F8C
                8102803E5102A042F80363A200A06F94009446F80313A00020074A004A21FC81
                095100900B2500B911FEC0142800C88912805C087F604A1400E4460940DF087F
                A0071400944009405F087FA0271400944209C0B4087FA0471400944409C0A408
                7FA0671400944609C0B8087F20030A001428011815E10F644201800A25004B21
                FC818C280050A2046021843F901905006A9400AC8EF0070AA00060082801E810
                FE402114000C052500843F50100500434209F08BF0070AA30060682801FE10FE
                80000500434409F083F007442800182A4A40FB087F4088028021A304B48BF007
                C42800183A4A407B087F60002800A80125A01D843F30101400D4E25976DE6E67
                2DF5209818E10F0C08050035D9DFCE9981125023C21F18180A006A4309A80FE1
                0F0C10050035A204D483F007068A02805A5102868FF007068C02809A5102868B
                F007068E0280DA51028687F0072A4001400B2801C341F80395A000A01594003D
                C21FA80805002DA104E810FE40652800680D25A03CC21FA81005002DA2049443
                F80395A200A0559480FC087FA0621400B48C12900FE10F548E0280D65102FA47
                F8030DA000C0034A407F087FA0111400784109981EE10F348402004F28019323
                FC81C65000E00D25607C843FD0200A003CA2048C8EF0071A450180579480A511
                FE40C32800F08C12B030C21F681C0500DE5102D644F8030E5000004AC0CA087F
                C0090A00905002087FC0150A007007CF2580F0079CA10000ABF25802087FC021
                0A00B0264F2580F0079CA20000F3F35002087FC0310A00B0B0964B00E10F3847
                010016D7620920FC0150008011B45402087F00B32800C0685A2801843F80DB51
                0080D1D55C02087F00ABA00000E3A9B10410FE00D6400100C657530920FC01CC
                8B02004CA6861240F8035810050098DC904B00E10F60511400603A432C01843F
                8025510080E90DA90410FE0046420100FA31841240F80318190500E88FB20410
                FE00C6420100FAA52801843F80B1510080FE952C01843F80895000803C4A9400
                C21FC0C42800403E394B00E10F602A140020AF1C2580F00730350A00905F9F25
                80F007D00B0A0050461F2580F007D01B0A0050CE342580F007D02B0A0050D624
                2580F007D03B0A0050DE382580F00790050500D018A50410FE00B2A100003A8B
                9500C21F40561400406BBE1240F803C88E0200E8AD5C02BE6067A740F803C88C
                02000CC37E769E13D2BFFC6F540F03A07D140000001CA2000000E01005000000
                87280000003844010000C0210A0000000E510000007088020000804314000000
                1CA2000000E0100500000087280000003844010000C0210A0000000E51000000
                70880200008043140000001CA2000000E0100500000087280000003844010000
                C0210A0000000E5100000070880200008043140000001CA2000000E010050000
                0087280000003844010000C0210A0000000E5100000070880200008043FF1F52
                C77BB5171D6A440000000049454E44AE426082}
              Stretch = True
              ExplicitLeft = 152
              ExplicitTop = 48
              ExplicitWidth = 105
              ExplicitHeight = 105
            end
          end
        end
        object pnlGrid: TPanel
          Left = 0
          Top = 0
          Width = 744
          Height = 580
          Align = alClient
          BevelOuter = bvNone
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          TabOrder = 1
          object gridProdutos: TDBGrid
            Left = 5
            Top = 5
            Width = 734
            Height = 529
            Align = alClient
            BorderStyle = bsNone
            DataSource = dsItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'codigo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Caption = 'C'#243'digo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'item'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Item'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Caption = 'Descri'#231#227'o do Produto'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 320
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'valorunitario'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Alignment = taRightJustify
                Title.Caption = 'Valor Unit'#225'rio'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'quantidade'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Alignment = taRightJustify
                Title.Caption = 'Quantidade'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'subtotal'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Alignment = taRightJustify
                Title.Caption = 'Sub Total'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 90
                Visible = True
              end>
          end
          object pnlIdentificaCliente: TPanel
            Left = 5
            Top = 534
            Width = 734
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            Color = 12158208
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            Visible = False
          end
        end
      end
      object splitViewPagamentos: TSplitView
        Left = 1144
        Top = 60
        Width = 0
        Height = 580
        AnimationDelay = 0
        DisplayMode = svmOverlay
        Opened = False
        OpenedWidth = 840
        Placement = svpRight
        TabOrder = 3
        UseAnimation = False
        object pnlPag: TPanel
          Left = 0
          Top = 0
          Width = 0
          Height = 580
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
        end
      end
      object splitViewFuncoes: TSplitView
        Left = 1144
        Top = 60
        Width = 0
        Height = 580
        AnimationDelay = 0
        DisplayMode = svmOverlay
        Opened = False
        OpenedWidth = 280
        Placement = svpRight
        TabOrder = 5
        UseAnimation = False
        object pnl1: TPanel
          Left = 0
          Top = 0
          Width = 0
          Height = 580
          Align = alClient
          BevelOuter = bvNone
          Color = 14342621
          ParentBackground = False
          TabOrder = 0
          object pnlInformarCpf: TPanel
            Left = 0
            Top = 0
            Width = 0
            Height = 41
            Cursor = crArrow
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Informar CPF (F9)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object shpLineInformarCpf: TShape
              Left = 0
              Top = 40
              Width = 0
              Height = 1
              Align = alBottom
              ExplicitTop = 39
              ExplicitWidth = 200
            end
          end
          object pnlNovaVenda: TPanel
            Left = 0
            Top = 41
            Width = 0
            Height = 41
            Cursor = crArrow
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Nova Venda (F3)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object shpLineNovaVenda: TShape
              Left = 0
              Top = 40
              Width = 0
              Height = 1
              Align = alBottom
              ExplicitTop = 39
              ExplicitWidth = 200
            end
          end
          object pnlFecharVenda: TPanel
            Left = 0
            Top = 82
            Width = 0
            Height = 41
            Cursor = crArrow
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Fechar Venda (F7)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object shpLineFecharVenda: TShape
              Left = 0
              Top = 40
              Width = 0
              Height = 1
              Align = alBottom
              ExplicitTop = 39
              ExplicitWidth = 200
            end
          end
          object pnlMultiplicar: TPanel
            Left = 0
            Top = 123
            Width = 0
            Height = 41
            Cursor = crArrow
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Multiplicar (*)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object shpLineMultiplicar: TShape
              Left = 0
              Top = 40
              Width = 0
              Height = 1
              Align = alBottom
              ExplicitTop = 39
              ExplicitWidth = 200
            end
          end
          object pnlDescontoItem: TPanel
            Left = 0
            Top = 164
            Width = 0
            Height = 41
            Cursor = crArrow
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Desconto Item (F11)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object shpLineDescontoItem: TShape
              Left = 0
              Top = 40
              Width = 0
              Height = 1
              Align = alBottom
              ExplicitTop = 39
              ExplicitWidth = 200
            end
          end
          object pnlSuprimentoSangria: TPanel
            Left = 0
            Top = 205
            Width = 0
            Height = 41
            Cursor = crArrow
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Suprimento/Sangria (Ctrl + F4)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            object shpLineSuprimentoSangria: TShape
              Left = 0
              Top = 40
              Width = 0
              Height = 1
              Align = alBottom
              ExplicitTop = 39
              ExplicitWidth = 200
            end
          end
          object pnlImportarCliente: TPanel
            Left = 0
            Top = 246
            Width = 0
            Height = 41
            Cursor = crArrow
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Importar Cliente (F1)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            object shpLineInformarCliente: TShape
              Left = 0
              Top = 40
              Width = 0
              Height = 1
              Align = alBottom
              ExplicitTop = 39
              ExplicitWidth = 200
            end
          end
        end
      end
    end
  end
  object dsItens: TDataSource
    DataSet = dmDados.cdsItens
    Left = 16
    Top = 536
  end
end
