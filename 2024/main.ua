Data ← &fras "testdata.txt"
Lines ← ⊜□≠@\n. Data

GetFirstAndLast ← ⊂ ⊢ : ⊢ ⇌ .
TupToNum ← ⋕⍉∵°⋕
Nums ← ♭⍉∵°⋕⇡10
Ones ← ↯1=.⇡⧻

FindNums ← ×⇡10⊞⌕ Nums
Occs ← ▽≠0. /+× ⊃FindNums Ones
BoxOccs ← Occs °□
FirstLastOccs ← TupToNum GetFirstAndLast BoxOccs

Digits ← ∵⍜°□FirstLastOccs Lines
GetRes ← ⊢/+

GetRes Digits
