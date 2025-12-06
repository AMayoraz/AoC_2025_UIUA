&rs ∞ &fo "aoc2025_6_1.txt"
# $ 123 328  51 64
# $ 45 64  387 23
# $  6 98  215 314
# $ *   +   *   +
Data ←
# Out of the box 
Axl ← ⊢ °□
# Parse the Data
⊜(⊜□⊸≠@ )⊸≠@\n Data
# Seperate the signs from the numbers
°⊂⇌
# Parse the numbers
⊙(⋕⍉)
# Split line by their operation
⊃(×=@*|×=@+)
# Apply the operation
⊂≡(/×⊙/+)
# Sum everything
/+
Axl
