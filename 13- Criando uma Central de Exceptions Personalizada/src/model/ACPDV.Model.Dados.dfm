object dmDados: TdmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 296
  Width = 369
  object cdsItens: TClientDataSet
    PersistDataPacket.Data = {
      B10000009619E0BD010000001800000005000000000003000000B10006636F64
      69676F0100490000000100055749445448020002006400046974656D04000100
      000000000964657363726963616F010049000000010005574944544802000200
      64000D76616C6F72756E69746172696F08000400000001000753554254595045
      0200490006004D6F6E6579000A7175616E746964616465080004000000010007
      535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 64
    Top = 24
    object cdsItenscodigo: TStringField
      FieldName = 'codigo'
      Size = 100
    end
    object cdsItensdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object cdsItensvalorunitario: TCurrencyField
      FieldName = 'valorunitario'
      EditFormat = 'R$ #.##0,00'
    end
    object cdsItensid: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id'
      Calculated = True
    end
    object cdsItensunidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'unidade'
      Calculated = True
    end
    object cdsItensestoque: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoque'
      Calculated = True
    end
  end
end
