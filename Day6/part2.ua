&rs ∞ &fo "aoc2025_6_1.txt"
# $ 123 328  51 64
# $  45 64  387 23
# $   6 98  215 314
# $ *   +   *   +
Data ←
# Parse the Data
⬚@ ⊜∘⊸≠@\n Data
# Seperate the signs from the numbers
⇌⍜⇌°⊂
# Reorient and split the numbers
⊙(
  # Transpose the numbers
  ⇌⍉
  # Get number max lenght
  ⊸(/↥≡⧻)
  # Put every number in its own little box
  ≡□
  # Mask the box list to keep the not empty ones
  ⍚(▽¬⊸⦷˜▽" ")
  # Empty boxes check
  ⊸≡(↧1◇⧻)
  # Split by empty boxes
  ⊜(□⋕)
)

# Split line by their operation
⊜∘⊸≠@
⊃(×=@*|×=@+)
# Apply the operation
⊂≡⍚(/×⊙/+)
# Sum everything
/+
# I still don't like the boxes system