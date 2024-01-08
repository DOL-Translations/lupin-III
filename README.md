This is the English translation for Lupin III: Umi ni Kieta Hihou - a game for the Gamecube, a visual novel created and published by Asmik Ace.

The orignal translation was done be Peter Lemon around 8 years ago (From the time of writing this) which can be found here: https://github.com/PeterLemon/GC

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

Special thanks to Peter Lemon for starting the whole thing, and thanks to Drgn for helping me setup the whole project, along with gbaXL for assisting in new tools to make this easier.

Currently we're in need on additional translators.
