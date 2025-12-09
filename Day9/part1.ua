&rs ∞ &fo "aoc2025_9_1.txt"
# $ 7,1
# $ 11,1
# $ 11,7
# $ 9,7
# $ 9,5
# $ 2,5
# $ 2,3
# $ 7,3
Data ←
⊜(⊜⋕⊸≠@,)⊸≠@\n Data
# Get the heigth and width of every possible rectangles
˙⊞(+1⌵-)
# Get the area of every possible rectangle
≡/×⍉
# Find the largest area
/↥♭
