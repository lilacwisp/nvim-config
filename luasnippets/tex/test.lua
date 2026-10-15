return {
  s ({ trig = 'e'}, { t ('\\emph{'), i (1), t ('}'), i (0)}),
  s ({ trig = 'nc' }, { t ('\\newcommand\\'), i (1, 'cmd_name'), t ('{'), i (2, 'cmd_def'), t ('}') }, i (0))
}, {
  s ({ trig = 'hello latex' }, { t ('Hello, \\LaTeX!')}),
  -- unsorted
  s ({ trig = 'qn' }, fmta('<> = <>', { i (1), i (0) })),
  s ({ trig = 'mt' }, fmta ('\\(<>\\)<>', { i (1), i (0)})),
  s ({ trig = 'mT' }, fmta ([[
  \[
    <>
  \]<>
  ]], { i (1), i (0) })),
  s ({ trig = 'evm' }, fmta([[
  \begin{<>}
    <>
  \end{<>}<>
  ]], { i (1), i (2), rep (1), i (0)}))
}
