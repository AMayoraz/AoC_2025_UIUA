&rs ∞ &fo "aoc2025_3_1.txt"
# $ 987654321111111
# $ 811111111111119
# $ 234234234234278
# $ 818181911112111
Data ←
# Parse data
⊜∘⊸≠@\n Data

# Trim middle max (if max not at an edge, remove everything on the left of it)
⍚(↘/↧˜◿⊙(-₁⧻)⊸⊚⊸=⊸/↥)

# Take greatest two values of each
⋕⍚(⊂⊢⟜⊣▽<2⊸⨂⊸(⇌⍆))

# Add everything
/+
