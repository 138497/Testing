    Dim FSO
    strFile = Wscript.Arguments.Item(0)
    
    Set FSO = CreateObject("Scripting.FileSystemObject")
    Set File = FSO.CreateTextFile(strFile)
    
    
    File.Writeline "{"
    File.Writeline Chr(34) & "name" & Chr(34) & ": " & Chr(34) & "Taxi Java ver_" & Wscript.Arguments.Item(1) & Chr(34) & ","
    File.Writeline Chr(34) & "application" & Chr(34) & ": " & Chr(34) & "TaxiJava" & Chr(34) & ","
    File.Writeline Chr(34) & "description" & Chr(34) & ": " & Chr(34) & "Taxi Java Snapshot" & Chr(34) & ","
    File.Writeline Chr(34) & "versions" & Chr(34) & ": [{" & Chr(34) & "Taxi-Java" & Chr(34) & ": " & Chr(34) & "latest" & Chr(34) & "}]"
    File.Writeline "}"
    
    
    File.Close
    Set File = Nothing
    Set FSO = Nothing