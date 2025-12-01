# Open input
&rs ∞ &fo "aoc2025_1_1.txt"
# $ L68
# $ L30
# $ R48
# $ L5
# $ R60
# $ L55
# $ L1
# $ L99
# $ R14
# $ L82
# Split by line
⊜□⊸≠@\n
# Replace R by '0'
⊸=@R
(⊙⋅)⍚⍜▽(@0)
# Replace L by '-'
⊸=@L
(⊙⋅)⍚⍜▽(@-)
# Parse the list
⋕
# Add start position
⊂50

# Accumulate rotation(without modulo) & check the sign of end point
\+
# Check if crossing
↥↥⊸⊃(=0|≥100⌵|⊂0↻¯1=¯1⧈(/×)2±)
# Count the number of complete turns at each moves
⊙(⌊÷100⌵)
# count the total number of 0 crossings
/+⬚0↥
