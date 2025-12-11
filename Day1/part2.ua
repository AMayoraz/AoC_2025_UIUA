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
# Accumulate rotation(without modulo)
\+
# Tick the sequence all the way and count the number of 0
⊸(
  ⧈∘2       # Set the range limits
  ⍚(♭⍜-⇡°⊟) # Develop the ranges
  /◇⊂       # Concatenate the ranges
  =0◿100    # Loops the ranges and get the 0
  /+        # Counts the 0
)
# Count the number of time it get over 100
⊙(/+↥0-₁⌊÷100⌵)

# Add everything
+
