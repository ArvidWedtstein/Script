dim oWMP
  Set oWMP = CreateObject("WMPlayer.OCX.7")
  Set colCDROMs = oWMP.cdromCollection
  colCDROMs.Item(0).Eject
  set oWMP = nothing