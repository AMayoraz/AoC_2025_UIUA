# # Open input
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
Data ←
Deltas ← (
  # Split by line
  ⊜□⊸≠@\n Data
  # Replace R by '0'
  ⊸=@R
  (⊙⋅)⍚⍜▽(@0)
  # Replace L by '-'
  ⊸=@L
  (⊙⋅)⍚⍜▽(@-)
  # Parse the list
  ⋕
)
Mag  ← ⌵ Deltas
Pos  ← ⊂50 +50\+ Deltas
Spos ← ⍜⇌↘₁Pos
Epos ← ↘₁Pos
CR   ← - ⌊(÷100Spos) ⌊(÷100Epos)
CL   ← - ⌊(÷100-₁Epos) ⌊(÷100-₁Spos)

↥ CL CR
/+


# FINALLY!!!
# Why did that took so long? It's not even a difficult problem.
# Anyways, it works. Coffee time.