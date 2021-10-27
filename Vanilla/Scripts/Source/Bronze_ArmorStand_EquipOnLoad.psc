Scriptname Bronze_ArmorStand_Equip Extends Actor

Form[] Property FormsToEquip  Auto
{Array of forms to equip on load}
FormList Property FormsToEquipList  Auto
{FormList of forms to equip on load}

Event OnInit()
    if FormsToEquipList
        Int fLength = FormsToEquipList.GetSize()
        Int i = 0
        while i < fLength
            EquipItem(FormsToEquipList.GetAt(i))
        EndWhile
    EndIf

    if FormsToEquip
        int fLength = FormsToEquip.Length
        int i = 0
        while i < fLength
            EquipItem(FormsToEquip[i])
        EndWhile
    EndIf
EndEvent
