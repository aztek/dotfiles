syn keyword Keyword  tpi thf tff fof cnf
syn keyword Constant axiom hypothesis definition assumption lemma theorem conjecture negated_conjecture plain fi_domain fi_functors fi_predicates type unknown
syn match   tptpPunctuation "(\|)\|,\|;\|:=\|:\|\.\|\[\|\]"
syn match   Operator    "!\|?\|=>\|<=>\|&\|=\|\~\|@\||\|*\|>"
syn match   celNumber '\d\+'
syn match   celNumber '[-+]\d\+'
syn match   celNumber '\d\+\.\d\d*'
syn match   celNumber '[-+]\d\+\.\d*'
syn match   Identifier /X[0-9]*/
syn match   tptpBuiltin     "$o\|$tType\|$ite_t\|$ite_f\|$ite\|$int\|$i\|$let_tt\|$let_tf\|$let_ft\|$let_ff\|$let\|$sum\|$difference\|$product\|$divide\|$uminus\|$to_int\|$to_rat\|$to_real\|$distinct\|$evaleq\|$equal\|$lesseq\|$less\|$greatereq\|$greater\|$is_int\|$is_rat\|$true\|$false\|$rat\|$real\|$array1\|$array2\|$array\|$select1\|$select2\|$select\|$store1\|$store2\|$store"
syn match   tptpIdentifier  /[a-z][a-zA-Z0-9_]*/
syn match   tptpIdentifier  "$$false\|$$true"
syn match   vampireFailed  /Termination reason: .*/
syn match   vampireRefutation "Termination reason: Refutation"
syn match   vampireSatisfiable "Termination reason: Satisfiable"
"syn match   vampireInference  /subsumption resolution [0-9]*,[0-9]*/
"syn match   vampireInference  /cnf transformation/
syn match   Comment     /%.*$/
syn match   String      /'[^']+'/

hi def  tptpPunctuation ctermfg=59
hi def  tptpBuiltin     ctermfg=lightgreen
hi def  vampireRefutation  ctermbg=yellow ctermfg=black
hi def  vampireSatisfiable  ctermbg=yellow  ctermfg=black
hi def  vampireFailed      ctermbg=red ctermfg=black

hi def  vampireInference  ctermbg=59
hi def  celNumber       ctermfg=magenta

"setlocal cindent
"inoremap (  ()<Left>
"inoremap !  ![]: ()<Left><Left><Left><Left><Left>
"inoremap ?  ?[]: ()<Left><Left><Left><Left><Left>
