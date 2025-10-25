' Interpretador gerado para sua linguagem personalizada
Dim fso, arq, linha
Set fso = CreateObject("Scripting.FileSystemObject")
Set arq = fso.OpenTextFile("script.adl", 1) ' Altere a extensão se necessário

Do Until arq.AtEndOfStream
    linha = arq.ReadLine
    linha = Replace(linha, "falar(", "MsgBox ")
    linha = Replace(linha, "esperar(", "WScript.Sleep ")
    linha = Replace(linha, ")", "")
    Execute linha
Loop
