
![GL3EE8_2024-01-06_11-20-13](https://github.com/radianthero/lupin-III/assets/90285213/c4c42f74-1026-4f51-8ef7-81f572417eaa)

This is the English translation for Lupin III: Umi ni Kieta Hihou - a game for the Gamecube, a visual novel created and published by Asmik Ace.

The orignal translation was done be Peter Lemon around 8 years ago (From the time of writing this) which can be found here: https://github.com/PeterLemon/GC

Currently we're in need on additional translators to translate the rest of the script from chapter 6 onwards. Disc 2 is basically an fmv so I'd need a translator to who can write down what they're saying.


![image](https://github.com/radianthero/lupin-III/assets/90285213/f1fa0723-183f-44c3-ad59-b561784078a0)

![lupin 3](https://github.com/radianthero/lupin-III/assets/90285213/06c6d445-185e-4e2b-81de-a2ac48577027)

The project is still in a heavy WiP state, with no set release yet - however over half of the game has been translated. If you want to see what we've been having been working, here's a tutorial on how to get it all working:


Download/clone the repository

In the folder `./tools/` you'll see two `.bat` files, right click to edit them. In the `compile.bat` you'll see a line starting with

`BinString.exe patch --source`. you'll have to edit the path to the `src\common\fs\COMMON` that your computer has. For example, here is what I have

`BinString.exe patch --source C:\Users\bob\Documents\GitHub\lupin-III\src\common\fs\COMMON --filter sfil.bin --output C:\Users\bob\Documents\GitHub\lupin-III\src\common\fs\COMMON --patch C:\Users\bob\Documents\GitHub\lupin-III\src\common\fs\COMMON --encoding "shift jis" --verbose` 

However you'll have to edit for your own path. For some reason relative paths don't work as of now, but will later down the line, but for now you'll have to do this. You're going to do the same for the `extract json - ONLY RUN ONCE.bat` Once again, here is an example of how mine looks like, but you'll have to edit to what you have.

`BinString.exe extract --source "C:\Users\bob\Documents\GitHub\lupin-III\src\common\fs\COMMON\sfil.BIN" --patch "C:\Users\bob\Documents\GitHub\lupin-III\src\common\fs\COMMON\sfil.BIN.json" --encoding "shift jis" --verbose --pattern "(3)(?<length>[\x08-\xFF])(?<text>(?=[\x5B\u0080-\uFFFF]).*?\])(\0)"`

Once both these files are edited, you'll have to add disc 1/2 into the `input` folder. it HAS to be renamed correctly, as this `Lupin Disc 1 [J]` and `Lupin Disc 2 [J]`. You don't need to have both files in the folder at the same time, one or the other will work. 

Lastly, back in `tools` folder, open the `extract json - ONLY RUN ONCE.bat`, as you have to extract the proper files first. After that, you'll run the `compile.bat` file, and assuming you did all the steps correctly, it'll compile properly.

Once it's finished, you'll go to the `output` folder, this will be the file that's now patched in English. 

That's it! 

Once the translation is done proper, an xdelta file will be released so that this process won't be needed, but as of now, our tools are being updated, more discoveries are being made (Like beta content), we don't feel comfortable with releaing it it more than an "As is" state.

Special thanks to Peter Lemon for starting the whole thing, and thanks to Drgn for helping me setup the whole project, along with gbaXL for assisting in new tools to make this easier.



Current road map for the team (No specific order):

Fix the space rendering on `History`. Right now the english text has no spaces in the log.

![image](https://github.com/radianthero/lupin-III/assets/90285213/9c1c2fd5-c8a1-4d13-a820-79f850f83afb)

Save data play time & banner. This is primarily for GameCube, if playing on Dolphin/Nintendont, this wont be an issue. (Done)

Tweak opening.bnr text length. To make the image look better. (Done)

Translate submenus (graphics). Every menu option is actually a pre-made sprite, and not dynamic with the text, so someone would have to make new assets (Currently being worked on)

Translate Chapters 6, 7 & 8. The last translators stopped at this parrt, and we need someone to help us translate for us to continue with the project.

Grammar, spacing, etc fixes to text. Sometimes the characters will say the next line after getting rid of the previous line, so the sentence doesn't slow perfectly. This is something to be tinkered with after the initial translation is completed, as just getting the text to the screen is more important atm.

Get a translation for disc 2, then add that to a custom dolphin build which lets us add subtitles. The game itself doesn't allow us to add any during this part, so its basically the only way to do so. 
