object Relatorio: TRelatorio
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de abastecimento'
  ClientHeight = 358
  ClientWidth = 787
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
  object Label2: TLabel
    Left = 214
    Top = 58
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label9: TLabel
    Left = 480
    Top = 37
    Width = 25
    Height = 13
    Caption = 'ICMS'
  end
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowExplosion = True
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 51
      BandType = btHeader
      object Label1: TLabel
        Left = 9
        Top = 29
        Width = 27
        Height = 16
        Caption = 'Data'
      end
      object Label3: TLabel
        Left = 106
        Top = 29
        Width = 41
        Height = 16
        Caption = 'Tanque'
      end
      object Label4: TLabel
        Left = 215
        Top = 29
        Width = 41
        Height = 16
        Caption = 'Bomba'
      end
      object Label5: TLabel
        Left = 304
        Top = 29
        Width = 29
        Height = 16
        Caption = 'Valor'
      end
      object Label6: TLabel
        Left = 504
        Top = 29
        Width = 32
        Height = 16
        Caption = 'ICMS'
      end
      object Label7: TLabel
        Left = 608
        Top = 29
        Width = 106
        Height = 16
        Caption = 'Total com imposto'
      end
      object Label8: TLabel
        Left = 435
        Top = 29
        Width = 32
        Height = 16
        Caption = 'Litros'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 89
      Width = 718
      Height = 38
      AutoSize = True
      Transparent = False
      object RLDBText1: TRLDBText
        Left = 9
        Top = 20
        Width = 38
        Height = 16
        DataField = 'DATA'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 106
        Top = 20
        Width = 57
        Height = 16
        DataField = 'TANQUE'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 215
        Top = 20
        Width = 52
        Height = 16
        DataField = 'BOMBA'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 304
        Top = 22
        Width = 48
        Height = 16
        DataField = 'VALOR'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 500
        Top = 18
        Width = 36
        Height = 16
        DataField = 'ICMS'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 632
        Top = 16
        Width = 88
        Height = 16
        DataField = 'TOTALGERAL'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 433
        Top = 19
        Width = 49
        Height = 16
        DataField = 'LITROS'
        DataSource = DataSource1
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 127
      Width = 718
      Height = 210
      BandType = btFooter
      object Label10: TLabel
        Left = 3
        Top = 169
        Width = 77
        Height = 16
        Caption = 'Total de litros'
      end
      object Label11: TLabel
        Left = 122
        Top = 169
        Width = 143
        Height = 16
        Caption = 'Total de Valor com ICMS'
      end
      object lli: TLabel
        Left = 3
        Top = 191
        Width = 4
        Height = 16
      end
      object ltot: TLabel
        Left = 124
        Top = 191
        Width = 4
        Height = 16
      end
      object RLDBResult1: TRLDBResult
        Left = 3
        Top = 191
        Width = 88
        Height = 16
        DataField = 'LITROS'
        DataSource = DataSource1
        Info = riSum
        Text = ''
      end
      object RLDBResult2: TRLDBResult
        Left = 122
        Top = 191
        Width = 127
        Height = 16
        DataField = 'TOTALGERAL'
        DataSource = DataSource1
        Info = riSum
        Text = ''
      end
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\ABC.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 656
    Top = 184
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 512
    Top = 192
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      #9'A."DATA",'
      #9'T.DESCRICAO AS TANQUE ,'
      #9'B.DESCRICAO AS BOMBA,'
      #9'SUM(A.VALOR) AS VALOR,'
      #9'SUM(A.TOTALICMS) AS ICMS,'
      #9'SUM(A.TOTALGERAL) AS TOTALGERAL,'
      'SUM(A.LITROS) AS LITROS'
      'FROM'
      #9'ABASTECIMENTO AS A'
      'INNER JOIN BOMBA b ON'
      #9'B.ID = A.ID_BOMBA'
      'INNER JOIN TANQUE t ON'
      #9'T.ID = B.ID_TANQUE'
      'GROUP BY'
      #9'A."DATA",'
      #9'TANQUE ,'
      #9'BOMBA')
    Left = 584
    Top = 184
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQuery1
    Left = 534
    Top = 279
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 622
    Top = 287
    object ClientDataSet1DATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object ClientDataSet1TANQUE: TStringField
      FieldName = 'TANQUE'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object ClientDataSet1BOMBA: TStringField
      FieldName = 'BOMBA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object ClientDataSet1VALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 4
    end
    object ClientDataSet1ICMS: TFloatField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 4
    end
    object ClientDataSet1TOTALGERAL: TFloatField
      FieldName = 'TOTALGERAL'
      Origin = 'TOTALGERAL'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 4
    end
    object ClientDataSet1LITROS: TFloatField
      FieldName = 'LITROS'
      Origin = 'LITROS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 4
    end
  end
end
