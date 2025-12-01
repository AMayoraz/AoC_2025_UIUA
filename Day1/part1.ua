# Open input
&rs ∞ &fo "aoc2025_1_1.txt"
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
# Accumulate rotation
\(◿100+)
# Count the number of 0
/+=0
