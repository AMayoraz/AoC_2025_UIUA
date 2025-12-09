&rs ∞ &fo "aoc2025_9_1.txt"
# $ 7,1
# $ 11,1
# $ 11,7
# $ 9,7
# $ 9,5
# $ 2,5
# $ 2,3
# $ 7,3
Data   ←
Parsed ← ⊜(⊜⋕⊸≠@,)⊸≠@\n Data
BasA   ← ×0°△+₃/↥Parsed
Rects ← (
  # Get all the pairs of rectangle corners
  ↯∞_2_2˙⊞(⊂)Parsed
  # Remove the doubles
  ◴≡⍆
  # Create the rectangles
  ≡(↻×₋₁⊙(⬚0↥BasA˜↯1)/↧⟜(+₁⌵/-))
)
# Create the mask from the rectangles
Mask ← (<0/-)Rects

# Apply the mask on the rectangles
≡(-×₂Mask)Rects
# Remove from the list the rectangles not fitting the mask
▽⊸≡(=0/+♭=1)
# Compute the area of the remaining rectangles
≡(/+♭)=¯1
# Get the greatest area
/↥

# Now that's the theory, but using the actual input
# Creates some complaints because creating a 9653255401 * 8 bytes
# array is suposedly too large to be handled.
