&rs ∞ &fo "aoc2025_5_1.txt"
# $ 3-5
# $ 10-14
# $ 16-20
# $ 12-18
# $ 
# $ 1
# $ 5
# $ 8
# $ 11
# $ 17
# $ 32
Data ←

Parsed ← (
  # Split by line return
  ⊜□⊸≠@\n Data
  # Check where are the ranges
  ⊸≡(/↥◇∊@-)
  # Keep the ranges only
  ▽
  # Separate each ranges in distinct values
  ≡°□⍚⊜⋕◇⊸≠@-
)

# Sort the ranges
⍆Parsed
# Scan for the higher upper ranges and check if greater than next lower randge
⊸(≥⊙(⬚0↻₋₁+₁\↥)°⊟⍉)
# Create the groups IDs
-₁\+¬
# Group given the group IDs
⊕(□♭)
# Get the higher and lower bound of every group and count the numger of elements
⍚(+₁/-⊂⊃/↧/↥)
# Sum Everything
/◇+