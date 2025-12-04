&rs ∞ &fo "aoc2025_4_1.txt"
# $ ..@@.@@@@.
# $ @@@.@.@.@@
# $ @@@@@.@.@@
# $ @.@@@@..@.
# $ @@.@@@@.@@
# $ .@@@@@@@.@
# $ .@.@.@.@@@
# $ @.@@@.@@@@
# $ .@@@@@@@@.
# $ @.@.@@@.@.
Data ←
# Parse the input
="@"⊜∘⊸≠@\n Data

# Count neighbors of each rolls
⤙×/+⊸⬚0↻ ⊂A₂C₂

# Mark empty spaces
+×₋₁=0

# Get the valid rolls
×⊃(≥0|<4)

# Sum valid rolls
/+♭
