&rs ∞ &fo "aoc2025_8_1.txt"
# $ 162,817,812
# $ 57,618,57
# $ 906,360,560
# $ 592,479,940
# $ 352,342,300
# $ 466,668,158
# $ 542,29,236
# $ 431,825,988
# $ 739,650,466
# $ 52,470,668
# $ 216,146,977
# $ 819,987,18
# $ 117,168,530
# $ 805,96,715
# $ 346,949,466
# $ 970,615,88
# $ 941,993,340
# $ 862,61,35
# $ 984,92,344
# $ 425,690,689
Data   ←
Parsed ← ⊜(⊜⋕⊸≠@,)⊸≠@\n Data
Dist   ← √/+°√-
# Compute distance of every point
˙⊞Dist Parsed
# Get min distance
=⊸≡/↧↥⊸(×∞=0)
# Get connection coordinates
˜▽⊙♭↯∞_2˙⊞⊟⊸(⇡⧻)
# Sort connections and remove duplicates
⍆◴≡⍆⍉
# Group the connectionw by endpoint
⊕□⊙⍉⊣⊸≡⊛⍉
# Deduplicate the nodes within the groups
⍚(◴♭)
# Check around for groups that contain the same nodes inside
/↥⍉×¤⊸(⇡₁⧻)⍉⊸˙⊞⍚(/↥∊)
# Regroup them
⬚∞⊕∘⊛
# Try to put every groups together and get their size
≡(⍚(⧻▽⊸≠∞◴⊂₄)◇°⊟₄)
# Sort the groups by size
⇌⍆
# Take the three best
↙3
# multiply their length
/×
# Cry because it doesn't work and the boxing system is very tedious to get around
