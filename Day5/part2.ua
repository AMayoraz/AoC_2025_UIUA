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

# Check equivalence
↧⊸˙⊞⊃(≥⊢|≤⊣)Parsed
# Remove diagonal
×¬/↥˜-⊸⊙˙⊞=
# Keep the valid ranges
▽⊸≠0♭
# Sort the elements
⍆
# Reshape in two columns
↯∞_2
# Get the number of elements in ranges
+₁/-⍉
# Sum all elements
/+
