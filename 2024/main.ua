Data ← &fras "data.txt"
Split ← ⊜□≠@\n. Data
First ← °□⊢Split

Gurba ← □⇌∵⇌⊐∧(⊂⍣⋕([];;)): []

G ← ♭⍉∵°⋕⇡10

×⇡10⊞⌕ G First
↯1=.⇡⧻First
/+×
G ← ▽≠0.
GetFirstAndLast ← ⊂ ⊢ : ⊢ ⇌ .
G
Res ← ∵Gurba Split

Matr ← ∵GetFirstAndLast Res

TupToNum ← ⋕⍉∵°⋕

# TupToNum ⊢Matr
FinalResult ← /+TupToNum ⍉ Matr
# FinalResult

Nums ← [□"zero" □"one" □"two" □"three" □"four" □"five" □"six" □"seven" □"eight" □"nine"]

D ← ⊜□≠@\n. &fras "example.tst"
F ← °□ ⊢ D
# F
# ∵Nums ⌕ ⊢D D
# ⌕ Nums F
# [2 0 0 1 9 0 0]
