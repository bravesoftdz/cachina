object ServerContainer1: TServerContainer1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 271
  Width = 454
  object DSServer1: TDSServer
    Left = 96
    Top = 67
  end
  object DSTCPServerTransport1: TDSTCPServerTransport
    Server = DSServer1
    Filters = <>
    Left = 96
    Top = 129
  end
  object DSServerClass1: TDSServerClass
    OnGetClass = DSServerClass1GetClass
    Server = DSServer1
    Left = 208
    Top = 67
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=CACHINA'
      'User_Name=user'
      'Server=.\sqlexpress'
      'OSAuthent=Yes'
      'DriverID=MSSQL')
    UpdateOptions.AssignedValues = [uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvUpdateNonBaseFields]
    UpdateOptions.UpdateNonBaseFields = True
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    Left = 208
    Top = 128
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 328
    Top = 128
  end
end
