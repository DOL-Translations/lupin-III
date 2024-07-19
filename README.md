# Lupin III - Umi ni Kieta Hihou Translation
- File: `Lupin Disc 1 [J].iso`
- Hash: `7097C62BB0DAD853EEDD17FAB86E333937FC207D`

- File: `Lupin Disc 2 [J].iso`
- Hash: `A99FDE5437736922DF221A4F709D4564163B6002`

![Title screen](https://github.com/DOL-Translations/lupin-III/assets/81663474/0924f239-467f-48b3-a74c-0692e0fa7790)

This is the English translation for Lupin III: Umi ni Kieta Hihou - a visual novel for the GameCube, developed and published by Asmik Ace.

The original translation was done be Peter Lemon around 8 years ago (From the time of writing this) which can be found here: https://github.com/PeterLemon/GC

All dialogue has been translated, however Chapters 6-8 were done primarily through machine translation. If a proper translation is done, we'll update those chapters accordingly.

# Patching Guide

#### xDelta patch (Recommended)
- Download [Delta Patcher](https://www.romhacking.net/utilities/704/)
- Grab the [latest release](https://github.com/DOL-Translations/kururin-squash/releases/latest/)
- Open Delta Patcher and add the translation xdelta patch and the required language iso.
#### Manual patch (Latest changes, Windows only)
- Download/clone the repository
- Once both these files are edited, you'll have to add Discs 1/2 into the `input` folder. It HAS to be renamed correctly, with the names and hashes listed above in the files section. You don't need to have both files in the folder at the same time, one or the other will work. 
- Lastly, back in the `tools` folder, run the `compile.bat` file, and assuming you did all the steps correctly, it'll compile properly.
- That's it! After a few seconds, your translated English ISO will be in the `output` folder. 

Special thanks to Peter Lemon for starting the whole thing, and thanks to Drgn for helping me setup the whole project, along with gbaXL for assisting in new tools to make this easier.


## When you pause and go to history, it won't display the words properly. Add this Action Replay code to fix this. 

C20095B8 00000002 <br />
7CE0FA14 3A400000 <br />
60000000 00000000 <br />
C200A878 00000005 <br />
B003003A 3A4000FF <br />
387D0000 38950000 <br />
3E208000 62318934 <br />
7E2903A6 4E800421 <br />
60000000 00000000 <br />
C200A88C 00000001 <br />
60000000 00000000 <br />
C200A860 00000007 <br />
B003003A 2C1200FF <br />
41820014 3E208000 <br />
6231A87C 7E2903A6 <br />
4E800420 387D0000 <br />
38950000 3E208000 <br />
62318934 7E2903A6 <br />
4E800421 00000000 <br />
C2008968 00000001
60000000 00000000

# Current road map for the team (No specific order):

Add support for History fix on disc (currently only available as an external Action Replay code)

Look into adding new fonts. (post-release)

Translate submenus (graphics). Every menu option is actually a pre-made image, and not dynamic with the text, so someone would have to make new assets (almost complete)

Grammar, spacing, making sure dialogue is lined up with itself, also fixing. Sometimes the characters will finish a sentence, then start a new sentence due to space limitations. Also sometimes, a line won't
finish, and will bleed into the next sentence, so the sentence doesn't flow perfectly. Lots of testing will have to be done to adjust these things. 