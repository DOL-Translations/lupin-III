# Lupin III - Umi ni Kieta Hihou Translation
- File: `Lupin Disc 1 [J].iso`
- Hash: `7097C62BB0DAD853EEDD17FAB86E333937FC207D`

- File: `Lupin Disc 2 [J].iso`
- Hash: `A99FDE5437736922DF221A4F709D4564163B6002`

![Title screen](https://github.com/DOL-Translations/lupin-III/assets/81663474/0924f239-467f-48b3-a74c-0692e0fa7790)

This is the English translation for Lupin III: Umi ni Kieta Hihou - a game for the GameCube, a visual novel created and published by Asmik Ace.

The orignal translation was done be Peter Lemon around 8 years ago (From the time of writing this) which can be found here: https://github.com/PeterLemon/GC

Currently we're in need on additional translators to translate the rest of the script from chapter 6 onwards. Disc 2 is basically an fmv so I'd need a translator to who can write down what they're saying.


![Pause menu](https://github.com/radianthero/lupin-III/assets/90285213/f1fa0723-183f-44c3-ad59-b561784078a0)

![Radnom scene](https://github.com/radianthero/lupin-III/assets/90285213/06c6d445-185e-4e2b-81de-a2ac48577027)

- Download/clone the repository
- (Optional) Edit the directory in `compile.bat` marked `C:\Users\bob\Documents\GitHub\lupin-III\src\common\fs\COMMON` to point to your local download of the repository. 
- Once both these files are edited, you'll have to add Discs 1/2 into the `input` folder. It HAS to be renamed correctly, with the names and hashes listed above. You don't need to have both files in the folder at the same time, one or the other will work. 
- Lastly, back in `tools` folder, run the `compile.bat` file, and assuming you did all the steps correctly, it'll compile properly.

- That's it! After a few seconds, your translated English ROM will be in the `output` folder. 


Special thanks to Peter Lemon for starting the whole thing, and thanks to Drgn for helping me setup the whole project, along with gbaXL for assisting in new tools to make this easier.



Current road map for the team (No specific order):

Fix the space rendering on `History`. Right now the English text has no spaces in the log.

![image](https://github.com/radianthero/lupin-III/assets/90285213/9c1c2fd5-c8a1-4d13-a820-79f850f83afb)

Translate submenus (graphics). Every menu option is actually a pre-made sprite, and not dynamic with the text, so someone would have to make new assets (Currently being worked on)

Translate Chapters 6, 7 & 8. The last translators stopped at this part, and we need someone to help us translate for us to continue with the project.

Grammar, spacing, etc fixes to text. Sometimes the characters will say the next line after getting rid of the previous line, so the sentence doesn't slow perfectly. This is something to be tinkered with after the initial translation is completed, as just getting the text to the screen is more important atm.

Get a translation for disc 2, then add that to a custom Dolphin build which lets us add subtitles. The game itself doesn't allow us to add any during this part, so its basically the only way to do so. The Dolphin build that allows subtitles will hopefully be merged to the main branch of Dolphin soon. 
