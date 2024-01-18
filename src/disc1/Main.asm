// GameCube "Lupin The Third - Umi Ni Kieta Hihou" Japanese To English Translation by Radiant, started by krom (Peter Lemon):

endian msb // Used To Encode SHIFT-JIS Words
output "../../output/Lupin Disc 1 [U].iso", create
origin $000000; insert "../../input/Lupin Disc 1 [J].iso" // Include Japanese Lupin The Third - Umi Ni Kieta Hihou GameCube ISO Disc 1

macro Text(OFFSET, TEXT) {
  map 0, 0, 256
  map '\n', 0x0A // Use [n] instead for newline, \n is only used for specific system text
  origin {OFFSET}
  db {TEXT}
}

// for Memory Card text
macro TextSave(OFFSET, TEXT) {
  map 0, 0, 256
  map '\n', 0x0A // Use [n] instead for newline, \n is only used for specific system text
  origin {OFFSET}
  db {TEXT}
  fill 42, $20
  dq $5B70335D81A55B70
  dl $305D00
  fill 1
}

macro TextMain(OFFSET, SPACE, SQUARE, TEXT) {
  origin {OFFSET}
  variable labeloffset = +
  db $33 // Text Start Byte
  db labeloffset - {OFFSET} + 2 // Text Length

  if {SPACE} != 0 { // IF (SPACE != 0)
    fill {SPACE}, $20 // Fill With Leading Space " " Bytes
  }

  if {SQUARE} != 0 { // IF (SQUARE != 0)
    dw $816D // Place SHIFT-JIS "[" Character (ASCII "[" Is Used As Special Character In Text Engine)
  }

  db {TEXT} // ASCII Text To Print
  +
  db "[n]", 0 // Text EOF
}

macro ReplaceAsset(ORIGIN, FILE, SIZE) {
  if !file.exists({FILE}) {
    print "{FILE} doesn't exist!"
  } else if file.exists({FILE}) {
    if (file.size({FILE}) > {SIZE} && {SIZE} != -1) {
      Assert("File {FILE} is bigger than Size {SIZE}")
    } else if (file.size({FILE}) <= {SIZE}) {
      origin {ORIGIN}
      insert {FILE}
      fill {SIZE} - file.size({FILE})
    }
  }
}

//Region
Text($3, "E")
origin $45B; db $01

include "Banner.asm"
include "Dialogue.asm"
include "Tpl.asm"
include "../common/System.asm"
include "../common/Text.asm"

//Note: these will not be overwritten by BinString,
//but additional text should be added to the json.
include "Credits.asm"
include "Intro.asm"
include "Chapter1.asm"
include "Choice.asm"
