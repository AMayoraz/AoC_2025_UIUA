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
  # Split data between ranges and inputs
  ⋕°⊟⊕□
  # Separate each ranges in distinct values
  ⊙(≡°□⍚⊜⋕◇⊸≠@-)
)
# Check if inputs are within ranges
↧˜⊞⊃(≥⊢|≤⊣) Parsed

# Get values only once
/↥

# Sum everything
/+
