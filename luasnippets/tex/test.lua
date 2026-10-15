-- unsorted
return {
  s ({ trig = 'e'}, { t '\\emph{', i (1), t '}', i (0)})
}, {
  s ({ trig = 'evm' }, fmta([[
  \begin{<>}
    <>
  \end{<>}<>
  ]], { i (1), i (2), rep (1), i (0)})),
  s ({ trig = 'hello latex' }, { t 'Hello, \\LaTeX!'}),
  s ({ trig = 'mt' }, fmta ('\\(<>\\)<>', { i (1), i (0)})),
  s ({ trig = 'mT' }, fmta ([[
  \[
    <>
  \]<>
  ]], { i (1), i (0) }))
}
