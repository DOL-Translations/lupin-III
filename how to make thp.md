# How to make thp

## Get the original videos

To get the original thp files, on a J copy of Disc 2, open in gcrebuilder, go to the movie folder, then export last_00.thp and last_01.thp.

## Convert the videos

Use https://github.com/Lord-Giganticus/THP-Converter to convert the thp to mp4. 

## Burn the subtitles in the videos

### Process

The videos do not have subtitles ingame, so we need to burn them in the videos.

Use DaVinci Resolve (Free version is fine). Import the mp4 video and the corresponding SRT subtitle file. There are some lines in last_00 around 1:55 that needs to be manually fixed as they overlap (multiple characters speaking at the same time).

### Parameters

You have to make a new mp4 exported at 640 x 352. While you may be able to do it at lower resolutions, this is what the original scene uses. Verify that the video you're rendering out is also in 29.97 fps, and not 60.

DaVinci Resolve only outputs 48kHz ou 44.1hHz, audio will need to be replaced at a later step. But you need to keep it in the output file.

### Common issues

If you have unwanted black borders, in the bottom right, click the gear icon, in Master Settings change the timeline resolution to 640x352, in Image Scaling change the Input Scaling to Scale entire image to fit, and in the Output Scaling in the same tab, change it again to 640 x 352.

If you have issue with mouthes of the characters twitching when playing the video ingame, set 1 keyframe per frame.

## Reencode back to THP format

### Prerequisites

You will need two specific encoders, as both of them have issues if used alone:

- avthp: https://github.com/jackoalan/avthp
- THPConv and dsptool.dll

And also ffmpeg.

### Encode video

Encode the second mp4 output by DaVinci Resolve with avthp. You'll need to adjust quality (`-q 79`) to get the best quality, but the files should not exceed original sizes: last_00 is 784 MB, last_01 is 181 MB. The next steps will also make the final size vary a bit.

```batch
REM avthp does not have quiet option, redirect stdin in order to keep the console clean
avthp.exe -s 640x352 -q 79 "last_00.mp4" "last_00.thp" 1> nul
```

The resulting file will have audio in 48kHz and will have issues ingame. We'll fix it at a later step.

### Extract audio

Extract audio with ffmpeg.

```batch
REM Get the raw audio stream from the original untouched THP
ffmpeg.exe -y -i "last_00.thp" -c:a pcm_s16le "last_00.wav" -loglevel error -stats
```

### Fix the converted THP

The audio in the THP converted with avthp is not suitable for the game. Even if you fed avthp with a file with a 32kHz audio stream, there would be popping issue.

```batch
REM Fix the audio by redoing the video/audio interleaving with THPConv
REM This operation is lossless	
THPConv.exe -c last_00_from_davinci.thp" -s "last_00.wav" -d "last_00.thp" -o -even
REM Original video is even interlaced
REM Padding with -o is not stricly necessary, disabling might gain some space
```

### Fix the THP header

THPConv outputs THP in version 1.1 instead of 1.0, contrary to avthp.
The game only accepts version 1.0.

You need to change it manually. At offset 4, change `00011000` to `00010000`.

The result in a hex editor:

```
  Offset Bytes                      
         00 01 02 03 04 05 06 07 08
  ------ -------------------------- -----
00000000 54 48 50 00 00 01 00 00 00 THP....
```

## How to test

To quickly test this, import it through gcrebuilder, and go to the end of disc 1, and make a save state, once pressing no when asked to save, it'll start to play the thp, and you'll be able to see what you've done!

You could put technically ANY video you want, but it'll be at an insanely low resolution, and there's other programs that play things that are a LOT easier to setup, such as https://github.com/GameCubeHomebrew/homebrew-media-player

Also you didn't rip the video wrong, the lip sync is just that bad.

## Notes

For avthp, use the dynamic build from jackoalan Github repository and not the static build shipped with WiiFlowTHP. This second one have supplementary options to not create audio in THP, and to set duration, but those are unnecessary. jackoalan build only accepts video files with audio as input, so that is why you need to keep the audio track even if it is unsuitable as is.