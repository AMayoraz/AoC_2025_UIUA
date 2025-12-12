&rs ∞ &fo "aoc2025_7_1.txt"
# $ .......S.......
# $ ...............
# $ .......^.......
# $ ...............
# $ ......^.^......
# $ ...............
# $ .....^.^.^.....
# $ ...............
# $ ....^.^...^....
# $ ...............
# $ ...^.^...^.^...
# $ ...............
# $ ..^...^.....^..
# $ ...............
# $ .^.^.^.^.^...^.
# $ ...............

Data ←

# Get the splitters
Split ← (
  =@^⊜∘⊸≠@\nData
  ▽⊸(>0/+⍉)
)

Nei ← (
  # Get the vertical index of the splitters
  ×⊸(⇡₁⧻)Split
  # Propagate indices
  \↥
  # Get the index of neighbors (top, top-left, top-right)
  ⬚0↻[¯1_0 0_1 0_¯1]
  # Separate top from the rest
  °⊂
  # Get the greatest side neighbor
  ⊙/↥
  # Check if top index is greater than sides
  >
)

# Remove the splitters without side neighbors
Nodes ← (
  ˜⊂↘1⊙⊢⊸↧Nei Split
  ×⊸(°△△)
)

N ← (
  ⊸⬚0↻[1_1 1_¯1]Nodes
  ⊙(>0)
  ⍚˜▽⍉⊸⧋×
  ⍚(⍚▽⊸≠0)
  ▽/◇⊂⊸(>0⍚⧻)/◇⊂
)

Nl ← ▽⊸>0♭Nodes

Adjl ← (
  ⍚(⍆⊂¤)N↙⧻N Nl
  ⍚⍉
  /◇⊂
)
Fadj   ← ⊕□°⊟⍉˜⊂˜⊟0+₁⊸(/↥♭)Adjl
Leaves ← ˜▽⟜(¬≡/↥⊞=)Nl◴⊢⍉Adjl

⍚(path(°□˜⊏Fadj)≍ ⊢Nl) Leaves

/+⍚(⧻)
# That's not the solution we're looking for. Here we only have the shortest paths for each leaf.
