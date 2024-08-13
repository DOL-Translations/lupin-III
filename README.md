# Lupin III - Umi ni Kieta Hihou Translation
- File: `Lupin Disc 1 [J].iso`
- Hash: `7097C62BB0DAD853EEDD17FAB86E333937FC207D`

- File: `Lupin Disc 2 [J].iso`
- Hash: `A99FDE5437736922DF221A4F709D4564163B6002`

![Title screen](https://github.com/DOL-Translations/lupin-III/assets/81663474/0924f239-467f-48b3-a74c-0692e0fa7790)

This is the English translation for Lupin III: Umi ni Kieta Hihou - a visual novel for the GameCube, developed and published by Asmik Ace.

The original translation was done be Peter Lemon around 2016 which can be found here: https://github.com/PeterLemon/GC

All dialogue and menus has been translated, however Chapters 6-8 were done primarily through machine translation. If a proper translation is done, we'll update those chapters accordingly.

# Patching Guide

#### xDelta patch (Recommended)
- Download [xDelta Patcher](https://www.romhacking.net/utilities/704/).
- Grab the [latest release](https://github.com/DOL-Translations/kururin-squash/releases/latest/).
- Open the xDelta Patcher, add the translation xDelta patch and Japanese iso, and press patch.
#### Manual patch (Latest changes, Windows only)
- Download/clone the repository.
- Add Discs 1 and/or 2 into the `input` folder. It HAS to be renamed correctly, to the names listed by the hashes listed above. You don't need to have both files in the folder at the same time, one or the other will work. 
- Lastly, back in the `tools` folder, run the `compile.bat` file, and assuming you did all the steps correctly, it'll compile properly.
- After a few seconds, your translated English ISO will be in the `output` folder. 

## When you pause and go to History, it won't display the words properly. Add this Gecko code to fix this. 

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
C2008968 00000001 <br />
60000000 00000000

# Current road map for the project (No specific order):

Add support for History fix on disc. (currently only available as an external Gecko code, post-release)

Look into adding new fonts. (post-release)

Fix audio popping issues in Disc 2. (Being worked on)