// Save data
Text($000D57DC, "Lupin III: Lost Treasure Under the Sea"); fill 1 // oopsie, overwrites some developer text lol
origin $4871A; db $03E4 // point to the new string
origin $48567; db $59 // "Y"
origin $48577; db $52 // "R"
origin $485BB; db $4D // "M"
origin $485CB; db $4E // "N"
origin $4860B; db $44 // "D"
origin $4861B; db $59 // "Y"
origin $486B7; db $48 // "H"
origin $48677; db $52 // "R"
origin $486B7; db $4D // "M"
origin $486C7; db $4E // "N"
ReplaceAsset($000D7BC0, "../common/fs/save_banner", 3848) // (inside the .dol)

// Memory Card - 38 strings
Text($000D97C0, "Lupin III - Lost Treasure          ") //Under the Sea -")
Text($000D97E4, "Would you like to start the game?[n]You will not be able to save."); fill 10
Text($000D9824, "Continue?"); fill 14
Text($000D985C, "Do you want to format the Memory Card?[n]All files will be deleted.") ; fill 8
Text($000D98A8, "Do you want to save your progress?")
Text($000D98CC, "Do you want to delete the corrupted data?[n]All save data for this game will be deleted.") ; fill 2
Text($000D9928, "Cancel loading?") ; fill 8
Text($000D9940, "Do you want to manage the Memory Card?") ; fill 10
Text($000D996C, "Load FILE 1?[n]"); fill 28
Text($000D9998, "Load FILE 2?[n]"); fill 28

Text($000D99C4, "Load FILE 3?[n]"); fill 28
Text($000D99F0, "Start the game from the beginning?") ; fill 5
Text($000D9A18, "Overwrite FILE 1?[n]") ; fill 31
Text($000D9A4C, "Overwrite FILE 2?[n]") ; fill 31
Text($000D9A80, "Overwrite FILE 3?[n]") ; fill 31
TextSave($000D9AB4, "No Memory Card found in Slot A.[n][n][n]")
TextSave($000D9B1C, "There is no free space or the number of files[n]have been exeeeded. To save, you will need[n]one file and 4 blocks of free space.")
TextSave($000D9BDC, "There is no free space or the number of files[n]have been exeeeded. To save, you will need[n]one file and 4 blocks of free space.")
TextSave($000D9C9C, "The Memory Card in Slot A[n]has corrupted data and needs to be formatted.[n][n]")
TextSave($000D9D24, "The Memory Card in Slot A[n]cannot be used for this game.[n][n]")

TextSave($000D9DA0, "The Memory Card in Slot A[n]cannot be used.[n][n]")
TextSave($000D9E18, "Formatting complete.[n][n][n]")
TextSave($000D9E70, "[p1]Formatting may have failed because the Memory Card was removed during formatting.[p0]")
TextSave($000D9EFC, "The Memory Card may have been removed.")
Text($000D9F74, "[n]        [x32][y32]Formatting...[x24][y24]")
TextSave($000D9FA8, "The game data saved on the Memory Card[n]in Slot A is corrupted.[n][n]")
TextSave($000DA03C, "Save data has been deleted.[n][n][n]")
TextSave($000DA094, "Select the file to save.[n][n][n]")
TextSave($000DA0FC, "Select the file to load.[n][n][n]")
TextSave($000DA164, "Do not touch the Memory Card, Reset Button,[n]or Power Button while saving or data[n]may be lost.[n]")

Text($000DA22C, "[n]        [x32][y32]Saving...[x24][y24]") ; fill 9
TextSave($000DA260, "Saving complete.[n][n][n]")
TextSave($000DA2B8, "[p1]The Memory Card was removed during writing,[n]so writing may have failed.[n][n]")
TextSave($000DA34C, "There is no data for this game[n]on the Memory Card in Slot A.[n][n]")
TextSave($000DA3CC, "To organize the contents of the Memory Card,[n]use the Memory Card management screen on the console.[n][n]")
TextSave($000DA45C, "There is something other than a[n]Memory Card inserted in Slot A.[n][n]")
TextSave($000DA4D4, "The Memory Card in Slot A[n]is broken and cannnot be used.[n][n]")
TextSave($000DA55C, "[p1]Failed to write data.[p0][n]The Memory Card in Slot A[n]is broken and cannot be used.[n]")

//Game Disc - 30 strings
Text($000D3EA0, "The Disc Cover is open.[n]To continue playing, close the Disc Cover.")
Text($000D3EFC, "No disc inserted.[n]Please insert Disc 1 of LUPIN III.") ; fill 29
Text($000D3F50, "No disc inserted.[n]Please insert Disc 2 of LUPIN III.") ; fill 29
Text($000D3FA4, "No disc inserted.[n]Please insert Disc 3 of LUPIN III.") ; fill 29
Text($000D3FF8, "Wrong disc inserted.[n]Please insert Disc 1 of LUPIN III.") ; fill 14
Text($000D4040, "Wrong disc inserted.[n]Please insert Disc 2 of LUPIN III.") ; fill 14
Text($000D4088, "Wrong disc inserted.[n]Please insert Disc 3 of LUPIN III.") ; fill 14
Text($000D40D0, "Disc could not be read.[n]If the disc cannot read after reinserting the disc,[n]check the Instruction Booklet.") ; fill 15
Text($000D414C, "A disc error has occurred.[n]Press the Power Button on the console to turn the power off,[n]and check the Instruction Booklet.") ; fill 3
Text($000D41CC, "Press the Open Button on the Disc Cover,[n]and replace it with Disc 1 of LUPIN III.[n]After replacing the disc, close the Disc Cover.") ; fill 11
Text($000D4260, "Press the Open Button on the Disc Cover,[n]and replace it with Disc 2 of LUPIN III.[n]After replacing the disc, close the Disc Cover.") ; fill 11
Text($000D42F4, "Press the Open Button on the Disc Cover,[n]and replace it with Disc 3 of LUPIN III.[n]After replacing the disc, close the Disc Cover.") ; fill 11
Text($000D4388, "The replaced disc is incorrect.[n]Please insert Disc 1 of LUPIN III.") ; fill 11
Text($000D43DC, "The replaced disc is incorrect.[n]Please insert Disc 2 of LUPIN III.") ; fill 11
Text($000D4430, "The replaced disc is incorrect.[n]Please insert Disc 3 of LUPIN III.") ; fill 11

//note: the following strings use \n instead of [n]. This is NOT a mistake.

Text($000D4484, "The Disc Cover is open.\nTo continue playing,\nclose the Disc Cover.") ; fill 11
Text($000D44DC, "No disc inserted.\nPlease insert Disc 1 of LUPIN III.") ; fill 29
Text($000D4530, "No disc inserted.\nPlease insert Disc 2 of LUPIN III.") ; fill 29
Text($000D4584, "No disc inserted.\nPlease insert Disc 3 of LUPIN III.") ; fill 29
Text($000D45D8, "Wrong disc inserted.\nPlease insert Disc 1 of LUPIN III.") ; fill 14
Text($000D4620, "Wrong disc inserted.\nPlease insert Disc 2 of LUPIN III.") ; fill 14
Text($000D4668, "Wrong disc inserted.\nPlease insert Disc 3 of LUPIN III.") ; fill 14
Text($000D46B0, "Disc could not be read.\nIf the disc cannot read after reinserting the disc,\ncheck the Instruction Booklet.") ; fill 15
Text($000D4728, "A disc error has occurred.\nPress the Power Button on the console to turn the power off,\nand check the Instruction Booklet.") ; fill 15
Text($000D47A4, "Press the Open Button on the Disc Cover,\nand replace it with Disc 1 of LUPIN III.\nAfter replacing the disc, close the Disc Cover.") ; fill 11
Text($000D4834, "Press the Open Button on the Disc Cover,\nand replace it with Disc 2 of LUPIN III.\nAfter replacing the disc, close the Disc Cover.") ; fill 11
Text($000D48C4, "Press the Open Button on the Disc Cover,\nand replace it with Disc 3 of LUPIN III.\nAfter replacing the disc, close the Disc Cover.") ; fill 11
Text($000D4954, "The replaced disc is incorrect.\nPlease insert Disc 1 of LUPIN III.") ; fill 13
Text($000D49A4, "The replaced disc is incorrect.\nPlease insert Disc 2 of LUPIN III.") ; fill 13
Text($000D49F4, "The replaced disc is incorrect.\nPlease insert Disc 3 of LUPIN III.") ; fill 13