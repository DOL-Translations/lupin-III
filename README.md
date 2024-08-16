# Lupin III - Umi ni Kieta Hihou Translation
- File: `Lupin Disc 1 [J].iso`
- Hash: `7097C62BB0DAD853EEDD17FAB86E333937FC207D`

- File: `Lupin Disc 2 [J].iso`
- Hash: `A99FDE5437736922DF221A4F709D4564163B6002`

![Title screen](https://github.com/DOL-Translations/lupin-III/assets/81663474/0924f239-467f-48b3-a74c-0692e0fa7790)

This is the English translation for Lupin III: Umi ni Kieta Hihou - a visual novel for the GameCube, developed and published by Asmik Ace.

The original translation was done be Peter Lemon around 2016 which can be found here: https://github.com/PeterLemon/GC

All dialogue and menus has been translated, along with Disc 2's fmv having subtitles baked into the video, making it fully console compatiable.

# Patching Guide

- Download [xDelta Patcher](https://www.romhacking.net/utilities/704/).
- Grab the [latest release](https://github.com/DOL-Translations/kururin-squash/releases/latest/).
- Open the xDelta Patcher, add the translation xDelta patch and Japanese iso, and press patch.

### If you're interested in compiling manually, or learning more about the game, [click here] to go to the wiki.

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

# Post release things to do:

Add support for History fix on disc. (currently only available as an external Gecko code)

Look into adding new fonts.

Get chapter 6-8 properly translated, and add fixes as needed.

