Scriptname Bronze_StringUtillities

; Replaces the specified string with another string for the specified number of times
; 0 will not replace anything, and any negative number will replace all occurances
String Function Replace(String str, String strFind, String strReplacement, Int aiMaxReplaces = -1) Global
    Int iStartPos = StringUtil.Find(str, "%def%", iStartPos + iFindStrLength) 
    Int iStrLength = StringUtil.GetLength(str)
    Int iFindStrLength = StringUtil.GetLength(strFind)
    ;Debug.Trace("[BRONZE] Replace - Started replacement. Parameters:\nReplace: " + strFind + "\nReplacement: " + strReplacement + "\nMax Replacements: " + aiMaxReplaces + "\nstr: " + str)
    String strBase
    Int replacesDone = 0

    While iStartPos >= 0 && replacesDone != aiMaxReplaces
        ;Debug.Trace("[BRONZE] Replace - Replacing from position " + iStartPos)
        If iStartPos > 0
            strBase = StringUtil.Substring(str, 0, iStartPos)
        Else
            strBase = ""
        EndIf
        str = strBase + strReplacement + StringUtil.Substring(str, iStartPos + iFindStrLength, 0)
        replacesDone += 1
        ;Debug.Trace("[BRONZE] Replace - Finished replace #" + replacesDone + " at position " + iStartPos + ", product:\n" + str)
        iStartPos = StringUtil.Find(str, strFind, iStartPos + iFindStrLength)
    EndWhile
    return str
EndFunction
